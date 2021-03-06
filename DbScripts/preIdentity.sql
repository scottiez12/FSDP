ALTER TABLE [dbo].[LessonViews] DROP CONSTRAINT [FK_LessonViews_Lessons]
GO
ALTER TABLE [dbo].[Lessons] DROP CONSTRAINT [FK_Lessons_Courses]
GO
ALTER TABLE [dbo].[CourseCompletions] DROP CONSTRAINT [FK_CourseCompletions_Courses]
GO
/****** Object:  Table [dbo].[LessonViews]    Script Date: 4/29/2019 11:01:58 AM ******/
DROP TABLE [dbo].[LessonViews]
GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 4/29/2019 11:01:58 AM ******/
DROP TABLE [dbo].[Lessons]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 4/29/2019 11:01:58 AM ******/
DROP TABLE [dbo].[Courses]
GO
/****** Object:  Table [dbo].[CourseCompletions]    Script Date: 4/29/2019 11:01:58 AM ******/
DROP TABLE [dbo].[CourseCompletions]
GO
/****** Object:  Table [dbo].[CourseCompletions]    Script Date: 4/29/2019 11:01:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseCompletions](
	[CourseCompletionID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[CourseID] [int] NOT NULL,
	[DateCompleted] [date] NOT NULL,
 CONSTRAINT [PK_CourseCompletions] PRIMARY KEY CLUSTERED 
(
	[CourseCompletionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Courses]    Script Date: 4/29/2019 11:01:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](200) NOT NULL,
	[Description] [varchar](500) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 4/29/2019 11:01:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lessons](
	[LessonID] [int] IDENTITY(1,1) NOT NULL,
	[LessonTitle] [varchar](200) NOT NULL,
	[CourseID] [int] NOT NULL,
	[Introduction] [varchar](300) NULL,
	[VideoUrl] [varchar](250) NULL,
	[PdfFileName] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Lessons] PRIMARY KEY CLUSTERED 
(
	[LessonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LessonViews]    Script Date: 4/29/2019 11:01:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonViews](
	[LessonViewID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[LessonID] [int] NOT NULL,
	[DateViewed] [date] NOT NULL,
 CONSTRAINT [PK_LessonViews] PRIMARY KEY CLUSTERED 
(
	[LessonViewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CourseCompletions] ON 

INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (1, N'Default', 1, CAST(0x993F0B00 AS Date))
SET IDENTITY_INSERT [dbo].[CourseCompletions] OFF
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseID], [CourseName], [Description], [IsActive]) VALUES (1, N'DefaultTest', NULL, 1)
SET IDENTITY_INSERT [dbo].[Courses] OFF
SET IDENTITY_INSERT [dbo].[Lessons] ON 

INSERT [dbo].[Lessons] ([LessonID], [LessonTitle], [CourseID], [Introduction], [VideoUrl], [PdfFileName], [IsActive]) VALUES (1, N'DefaultTest', 1, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Lessons] OFF
SET IDENTITY_INSERT [dbo].[LessonViews] ON 

INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (1, N'Default', 1, CAST(0x993F0B00 AS Date))
SET IDENTITY_INSERT [dbo].[LessonViews] OFF
ALTER TABLE [dbo].[CourseCompletions]  WITH CHECK ADD  CONSTRAINT [FK_CourseCompletions_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[CourseCompletions] CHECK CONSTRAINT [FK_CourseCompletions_Courses]
GO
ALTER TABLE [dbo].[Lessons]  WITH CHECK ADD  CONSTRAINT [FK_Lessons_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[Lessons] CHECK CONSTRAINT [FK_Lessons_Courses]
GO
ALTER TABLE [dbo].[LessonViews]  WITH CHECK ADD  CONSTRAINT [FK_LessonViews_Lessons] FOREIGN KEY([LessonID])
REFERENCES [dbo].[Lessons] ([LessonID])
GO
ALTER TABLE [dbo].[LessonViews] CHECK CONSTRAINT [FK_LessonViews_Lessons]
GO
