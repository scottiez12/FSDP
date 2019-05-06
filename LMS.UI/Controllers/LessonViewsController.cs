using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using LMS.Data.EF;
using Microsoft.AspNet.Identity;


namespace LMS.UI.Controllers
{
    public class LessonViewsController : Controller
    {
        private LMSEntities db = new LMSEntities();

        /*This is where the logic needs to go for the Course Completion stuff
            Some thoughts on this..
            Loop though the course for lesson views tied to the user, then redirect to the create of course completion

            Create a list of records of how many lesson views in a course by the UserID, and if that number is == 3 (in this case)
                ,then create a course completion and send the email in the course completion actions (or maybe here.. IDK yet..)                        
            */
        //get : LessonViewList
        public ActionResult GetViewList()
        {
            //var Views = db.LessonViews.ToList();
            //foreach (var item in db.Employees.Select(x=> x.UserID).Where(db.LessonViews)
            //{

            //}



            return View();
        }



        // GET: LessonViews
        public ActionResult Index()
        {
            var lessonViews = db.LessonViews.Include(l => l.Lesson);
            var curUser = User.Identity.GetUserId();
            if (User.IsInRole("Admin"))
            {
                return View(lessonViews.ToList());
            }

            if (User.IsInRole("Manager"))
            {
                var empId = db.Employees.Select(b => b.ReportsToID).ToString();
                var managerLink = db.Managers.Where(x => x.UserID == curUser).Where(a => a.ManagerID.ToString() == empId );

                return View(managerLink.ToList());

            }

            if (User.IsInRole("Employee"))
            {
                var empLV = db.LessonViews.Where(x => x.UserID == curUser);
                return View(empLV.ToList());
            }



            return View(lessonViews.ToList());
        }

        // GET: LessonViews/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LessonView lessonView = db.LessonViews.Find(id);
            if (lessonView == null)
            {
                return HttpNotFound();
            }
            return View(lessonView);
        }

        // GET: LessonViews/Create
        public ActionResult Create()
        {
            ViewBag.LessonID = new SelectList(db.Lessons, "LessonID", "LessonTitle");
            return View();
        }

        // POST: LessonViews/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.

        /*This is where the logic needs to go for the Course Completion stuff
       Some thoughts on this..
       Loop though the course for lesson views tied to the user, then redirect to the create of course completion

       Create a list of records of how many lesson views in a course by the UserID, and if that number is == 3 (in this case)
           ,then create a course completion and send the email in the course completion actions (or maybe here.. IDK yet..)                        
       */
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "LessonViewID,UserID,LessonID,DateViewed")] LessonView lessonView)
        {
            var curUser = User.Identity.GetUserId();
            var userID = db.Employees.Where(x => x.UserID == curUser);
            lessonView.UserID = curUser;
            var LesID = db.Lessons.Select(x => x.LessonID);

            var cIDlID =
                from C in db.Courses
                join L in db.Lessons on C.CourseID equals L.CourseID
                join LV in db.LessonViews on L.LessonID equals LV.LessonID
                join E in db.Employees on LV.UserID equals E.UserID
                where C.CourseID == L.CourseID
                where L.LessonID == LV.LessonID
                where LV.UserID == E.UserID
                select E.UserID.ToList();

            var lIDcID =
                from c in db.Courses
                join L in db.Lessons on c.CourseID equals L.CourseID
                select L.LessonID;
            ViewBag.CID = lIDcID;

            var empID = db.Employees.Select(x => x.UserID);
                 
            if (ModelState.IsValid)
            {
                
                db.LessonViews.Add(lessonView);
                db.SaveChanges();

                foreach (var item in cIDlID)
                {
                    if (db.LessonViews.Count() == 2)
                    {
                        CourseCompletion courseCompletion = new CourseCompletion();
                        courseCompletion.UserID = lessonView.UserID;
                        courseCompletion.CourseID = ViewBag.CID;
                        courseCompletion.DateCompleted = DateTime.Now;


                        db.CourseCompletions.Add(courseCompletion);
                        db.SaveChanges();

                        return RedirectToAction("ContactManagerCompletion", "CourseCompletionsController");
                    }
                }

                return RedirectToAction("Index");
            }

            ViewBag.LessonID = new SelectList(db.Lessons, "LessonID", "LessonTitle", lessonView.LessonID);
            return View(lessonView);
        }

        // GET: LessonViews/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LessonView lessonView = db.LessonViews.Find(id);
            if (lessonView == null)
            {
                return HttpNotFound();
            }
            ViewBag.LessonID = new SelectList(db.Lessons, "LessonID", "LessonTitle", lessonView.LessonID);
            return View(lessonView);
        }

        // POST: LessonViews/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "LessonViewID,UserID,LessonID,DateViewed")] LessonView lessonView)
        {
            if (ModelState.IsValid)
            {
                db.Entry(lessonView).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.LessonID = new SelectList(db.Lessons, "LessonID", "LessonTitle", lessonView.LessonID);
            return View(lessonView);
        }

        // GET: LessonViews/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LessonView lessonView = db.LessonViews.Find(id);
            if (lessonView == null)
            {
                return HttpNotFound();
            }
            return View(lessonView);
        }

        // POST: LessonViews/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            LessonView lessonView = db.LessonViews.Find(id);
            db.LessonViews.Remove(lessonView);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
