ALTER TABLE [dbo].[Managers] DROP CONSTRAINT [FK_Managers_AspNetUsers]
GO
ALTER TABLE [dbo].[LessonViews] DROP CONSTRAINT [FK_LessonViews_Lessons]
GO
ALTER TABLE [dbo].[LessonViews] DROP CONSTRAINT [FK_LessonViews_Employees]
GO
ALTER TABLE [dbo].[Lessons] DROP CONSTRAINT [FK_Lessons_Courses]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Managers]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Jobs]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_AspNetUsers]
GO
ALTER TABLE [dbo].[CourseCompletions] DROP CONSTRAINT [FK_CourseCompletions_Employees]
GO
ALTER TABLE [dbo].[CourseCompletions] DROP CONSTRAINT [FK_CourseCompletions_Courses]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[Managers]    Script Date: 5/8/2019 8:33:22 AM ******/
DROP TABLE [dbo].[Managers]
GO
/****** Object:  Table [dbo].[LessonViews]    Script Date: 5/8/2019 8:33:22 AM ******/
DROP TABLE [dbo].[LessonViews]
GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 5/8/2019 8:33:22 AM ******/
DROP TABLE [dbo].[Lessons]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 5/8/2019 8:33:22 AM ******/
DROP TABLE [dbo].[Jobs]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 5/8/2019 8:33:22 AM ******/
DROP TABLE [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 5/8/2019 8:33:22 AM ******/
DROP TABLE [dbo].[Courses]
GO
/****** Object:  Table [dbo].[CourseCompletions]    Script Date: 5/8/2019 8:33:22 AM ******/
DROP TABLE [dbo].[CourseCompletions]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/8/2019 8:33:22 AM ******/
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/8/2019 8:33:22 AM ******/
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/8/2019 8:33:22 AM ******/
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/8/2019 8:33:22 AM ******/
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/8/2019 8:33:22 AM ******/
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/8/2019 8:33:22 AM ******/
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/8/2019 8:33:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/8/2019 8:33:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/8/2019 8:33:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/8/2019 8:33:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/8/2019 8:33:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/8/2019 8:33:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CourseCompletions]    Script Date: 5/8/2019 8:33:22 AM ******/
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
/****** Object:  Table [dbo].[Courses]    Script Date: 5/8/2019 8:33:22 AM ******/
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
/****** Object:  Table [dbo].[Employees]    Script Date: 5/8/2019 8:33:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employees](
	[UserID] [nvarchar](128) NOT NULL,
	[FirstName] [varchar](30) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[IsManager] [bit] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[JobID] [int] NOT NULL,
	[ReportsToID] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 5/8/2019 8:33:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Jobs](
	[JobID] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lessons]    Script Date: 5/8/2019 8:33:22 AM ******/
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
/****** Object:  Table [dbo].[LessonViews]    Script Date: 5/8/2019 8:33:22 AM ******/
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
/****** Object:  Table [dbo].[Managers]    Script Date: 5/8/2019 8:33:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Managers](
	[UserID] [nvarchar](128) NOT NULL,
	[FirstName] [varchar](30) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[JobID] [int] NOT NULL,
	[ManagerID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Managers] PRIMARY KEY CLUSTERED 
(
	[ManagerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201904291620553_InitialCreate', N'IdentitySample.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE4B8117D0F907F10F49404DE962F99C1C468EFC2DB1E6F8CF886697B91B7015B62B7859128AD44796D04FB65FB904FCA2FA4285117DE74E996BBDB8B0516D32279AA583C248BC5A2FFF7FB7FA73FBC8481F58C93D48FC8997D3439B42D4CDCC8F3C9EACCCEE8F2BB4FF60FDFFFF94FD3CF5EF862FD5CD63B61F5A02549CFEC274AE353C749DD271CA27412FA6E12A5D1924EDC2874901739C78787FF708E8E1C0C10366059D6F44B46A81FE2FC07FC9C45C4C531CD507013793848F9772899E7A8D62D0A711A23179FD9571E86B6F4758EC238C093A2816D9D073E0265E63858DA162224A28882AAA78F299ED32422AB790C1F50F0F01A63A8B744418A79174EEBEA7D7B7378CC7AE3D40D4B28374B69140E043C3AE1E671E4E66B19D9AECC0706FC9C1B8BF53A37626DBF2F51000690059ECE8284553EB36F2A11E7697C8BE9A46C3829202F1380FB354ABE4D9A880756EF7607159D8E2787ECBF036B9605344BF019C1194D507060DD678BC077FF855F1FA26F989C9D1C2D96279F3E7C44DEC9C7BFE3930FCD9E425FA19EF0013EDD27518C13D00D2FABFEDB9623B673E48655B3469BC22AC0259819B675835EAE3159D1279833C79F6CEBD27FC15EF98593EB91F83091A0114D32F8799B05015A04B82A775A65B2FFB7483DFEF07114A9B7E8D95FE5432FC9878993C0BCFA8283BC347DF2E3627A09E3FD9557BB4CA290FD16F955947E9D4759E2B2CE44C62A0F2859612A6A37756AF2F6A234831A9FD625EAFE539B69AAD25B5B9575689D99508AD8F66C28F57D5BB9BD19771EC7307839B59845DA08A7DDAF2612C081757D339F3C5ED5C439EA4B1C021DFA23AF839F43E407232C843DA4801BB2F4931057BDFC3102DA213258E77B94A6B00E78FF44E9538BEAF0CF11549F63374B18C12830ECCDA5DD3F4504DF66E182B17E7BB2461B9A875FA34BE4D228F94C58AB8DF1AE23F75B94D1CFC4BB40143F52B704643F1FFCB03FC028EA9CBB2E4ED34B2033F6661178D925E015A127C783E1D8DAB46B476416203FD47B22D22AFAB5AC5A7B23FA1A8A4762A8A6F34ADA54BD8E563EE9A76A59D5AC6A51A353555E6DA8AA0CAC9FA6BCA659D1BC42A79E45ADD1FCBC7C84C677F472D8FDF7F436DBBC4D6B41C38C735821F14F98E0049631EF1E518A13528F409F756317CE423E7C4CE89BEF4DB9A49F51908D2D6AADD9902F02E3CF861C76FF6743AE267C7EF63DE695F438FE949501BE577DFDC9AA7BCE499A6D7B3A08DDDCB6F0EDAC01A6E9729EA691EBE7B34013F8E2610B517FF0E1ACEE1846D11B390E021D03A2FB6CCB832FD0375B26D51DB9C001A6D83A778BC0E00CA52EF254334287BC018A953BAA46B13A1E222AF7374526301D27AC116287A01466AA4FA83A2D7CE2FA310A3AAD24B5ECB985B1BE5732E4920B1C63C204765AA28F707DF8832950C99106A5CB4253A7C1B876221ABC56D39877B9B0F5B82B5189AD70B2C37736F092FB6F6F42CC768B6D819CED26E9A3803194B70B82F2B34A5F02C807977D23A87462321094BB545B21A868B11D105434C9BB23687144ED3BFED27975DFE8291E94B7BFADB79A6B07DC14ECB167D42C7C4F6843A1054E547A5E2C58217EA19AC319E8C9CF67297775658AE4F706988A219BDADFD5FAA14E3B884CA236C09A681DA0FC1250015226D400E5CA585EAB76DC8B18005BC6DD5A61F9DA2FC13638A062372F431B15CD57A632397B9D3EAA9E556C5048DEEBB0D0C0D110425EBCC48EF7308A292EAB1AA68F2F3CC41B6E748C0F468B813A3C578391CACE8C6EA5929ADD56D23964435CB28DAC24B94F062B959D19DD4A9CA3DD46D2380503DC828D4C246EE1234DB632D251ED3655D9D429D2A4F887A963C8A79ADEA038F6C9AA915FC5BF58F322B96AF6DD7C78CA515860386EAAC93CAAB4AD24D128412B2C958268D0F4D24F527A81285A2016E79979A1524DBBB71A96FF526473FB5407B1DC07CADAECDFE2DA2E5EDD0BDBADEA8F70984BE864C89C9A3C92AEA180BEB9C552DE5080124DF07E16055948CC3E96B9757185D76C5F7C5111A68EA4BFE2432906533C5DD1FABDC6469D17E38D53E5C5AC3F56660893C54B1FB46973935F6A4629C3544D1453E86A6763677267868E97EC2C0E1FAE4E84B7995D3C43A509C03F0DC468243928608DB2FEA8621E4A13532CE98F28259B3421A5A2015A36534A04259B056BE1192CAAAFD15F829A44D244574BFB236BD2499AD09AE235B0353ACB65FD513519274D604D717FEC3AFD445E47F778FF321E6136D9C08A83EE663B9801E36D16C57136C0C67D7E13A8F1792016BFB157C0F8F7BD2494F1B4B709A18A10C76684326098D71FE1325C5C7E5A6FF0CD98C20DB7B0C4B7DDF09BF186D1F64DC9A19CF7E42A95F4EADC279DEFA6FCACD5FDA846397C15556CAB34236CEFAF29C5E1845598CC7F0966818FD9625E56B841C45FE29416591DF6F1E1D1B1F428677F1EC83869EA059AB3AAE9958C38665B48D022CF28719F50A2A64B6CF088A4065522D157C4C32F67F67FF256A7795083FD2BFF7C605DA58FC4FF2583828724C3D66F6AFAE73849F5EDA7AD3D7D02D1DFAA57FFFE5A343DB0EE129831A7D6A164CB7546587C1831489BA2E906DAACFD5CE2FD4E28E1358216559A10EB3F3E58F874948707A5967F09D1CB5F87AAA67D5CB011A2E601C15878A398D0F440601D2CE3E3000F7ED2FC71C0B0CEEA1F0BACA39AF1A1804F8683C9CF04FA2F4365CB1D6E359A63D13696A4DCCE9D69D61BE55CEE7A6F52B2B1379AE86AC6F500B80DB2AAD760C63B4B481E6D77D4E41B8F86BD4B6ABF7992F1BEE415D7191FBB4D27DE660671CBFDD01F2A71780F52DD34A93BBB4F0FDE36D74CA1DC3DCFB11C9604BC6764E3095DBB4FF5DD36D94C61DE3D27DBA084DE3DE3DAAEF6CF1D33ADF716BAF3F45C35D3C87025A38B0577A5DF16817338E12F222041E15116AF26F5F95E266135598C02EB2A66A1E6443359B0327114B94A8D76B1C3FACA37FCD6CEF23AED620DE9996DB2F9FADF2A9BD769976D487ADC45E2B036ED5097CCDDB18EB56543BDA74461A1271D79E95D3E6BEBFDFA7BCA0B1EC528C2EC31DC11BF9F34E0514C32E6D41990F6AB5EF7C2DED9F84B8BB07FA7FEAA86607F77916057D835AB3A576419959BB7A45159458AD0DC608A3CD852CF13EA2F914BA198C598F367DF79DC8EDD742CB07745EE321A6714BA8CC3452004BC9813D0263FCF6D16759EDEC5F95F3019A30BA0A6CF62F377E4C7CC0FBC4AEF4B4D4CC800C1BC0B1ED1656349596477F55A21DD46A42710375FE5143DE0300E002CBD2373F48CD7D10DE8778D57C87DAD23802690EE8110CD3EBDF0D12A4161CA31EAF6F01338EC852FDFFF1F65E3BF4370540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'ada10b47-4dfd-4375-995a-e56e09d7bd45', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'f791f404-588f-4fbb-8b1d-f0174d3f92cc', N'Employee')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9987ad35-1891-4b0c-88ee-e19977bd8b86', N'Manager')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4e1370d3-2d60-42c8-a99e-a75bc749063f', N'9987ad35-1891-4b0c-88ee-e19977bd8b86')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e01e0fe2-def3-4141-9f6a-5919cff513f3', N'ada10b47-4dfd-4375-995a-e56e09d7bd45')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', N'f791f404-588f-4fbb-8b1d-f0174d3f92cc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'328ab3af-1dc9-45f0-9c59-c35cb8a8344f', N'f791f404-588f-4fbb-8b1d-f0174d3f92cc')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', N'test@employee.com', 0, N'AAa0KLWN8F/eWbmMKl5+b5dmU8fFYOyTs0smoNYmzRwzMoNmu7fkDSvk0+2CgeR61g==', N'34f8047e-4eea-41ed-8592-cb289e2ca985', NULL, 0, 0, NULL, 1, 0, N'test@employee.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'328ab3af-1dc9-45f0-9c59-c35cb8a8344f', N'7test@employee.com', 0, N'APd/VfjY7vG4E9XY/fkRiiXk2heF4oFcQDbUK/v1wNrDtB5WfRMg771XOP7eX5e0Aw==', N'7ed22cac-8566-4409-8205-e3751503f75d', NULL, 0, 0, NULL, 1, 0, N'7test@employee.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'355923ad-42f9-4d9c-a144-20bd42dc7cce', N'test4@employee.com', 0, N'AFtOHAFT7Bi1dfyuNv5tWySBZWsLEvO+WtKLLrSWMUc+1yDLWLe/IPFvOAymDsM6rg==', N'bc49db23-a171-4df9-b49d-3abdec6453a8', NULL, 0, 0, NULL, 1, 0, N'test4@employee.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'49096a8a-52e7-4ea4-8962-f2629a481b3e', N'test2@employee.com', 0, N'APDh1TkFzvm7cNjpZBAHZfTWKily6O2XkDeiqtKoUysXASu/d10ItWb31qCSNSO8zQ==', N'92a9f6fc-a4d0-42eb-add4-0fe292942f34', NULL, 0, 0, NULL, 1, 0, N'test2@employee.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4e1370d3-2d60-42c8-a99e-a75bc749063f', N'test@manager.com', 0, N'AGGZP6UT+Z/YtlXOlyJ7fAnDvIkkXk9jRQRW2bvHUFYnwfNcmWow0RudjAtpR4On2Q==', N'd7039f0a-5d4a-4dca-8b2b-9e469dfa254c', NULL, 0, 0, NULL, 1, 0, N'test@manager.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7105e8f2-79f1-47db-941a-144a4c32921b', N'5test@employee.com', 0, N'AIJL5s4YXkG4mp0Lt71ci8XFT0ZgNaWXE1bXP7bTp8uztDSgCWtgtsq+ofaLwpgkdw==', N'74a3d12c-f605-463c-8c3d-d09594319dd5', NULL, 0, 0, NULL, 1, 0, N'5test@employee.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ae0d9c04-9dd2-44d7-ba33-6dfc69f8e453', N'test3@employee.com', 0, N'ALa3fggPWZvtiVBeiYnjXVHad2CG5rR6T136QUMtablkSTJuC6qg2BIP3lfP0Y8VbA==', N'ed32f0e2-62bf-4fec-b08d-947583e08c04', NULL, 0, 0, NULL, 1, 0, N'test3@employee.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'cf5f540d-587e-4085-a2a9-c24b6341fa3e', N'6test@employee.com', 0, N'AKb5UX75aQKmh2ZvDAbJLe7Ezr2LvPXfWPvPb+FcSQNSxRwj4ZRSLIsQTqPXX6335Q==', N'a5c89163-066c-4451-895b-c284fe6f6cce', NULL, 0, 0, NULL, 1, 0, N'6test@employee.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e01e0fe2-def3-4141-9f6a-5919cff513f3', N'admin@example.com', 0, N'AOqI50kEpdt88OCxV4teMYvnJTkiP2UQulMsZe5UtMZusw6rM+i78Zf6hSZ0hBIgtQ==', N'02ef14b9-295e-49b8-8bd1-35f1680a519e', NULL, 0, 0, NULL, 0, 0, N'admin@example.com')
SET IDENTITY_INSERT [dbo].[CourseCompletions] ON 

INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (2, N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', 2, CAST(0x9D3F0B00 AS Date))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (3, N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', 2, CAST(0xA03F0B00 AS Date))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (4, N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', 2, CAST(0xA13F0B00 AS Date))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (5, N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', 2, CAST(0xA13F0B00 AS Date))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (6, N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', 2, CAST(0xA13F0B00 AS Date))
INSERT [dbo].[CourseCompletions] ([CourseCompletionID], [UserID], [CourseID], [DateCompleted]) VALUES (7, N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', 2, CAST(0xA13F0B00 AS Date))
SET IDENTITY_INSERT [dbo].[CourseCompletions] OFF
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseID], [CourseName], [Description], [IsActive]) VALUES (2, N'Safety Fundamentals', N'Core Safety Curriculum', 1)
SET IDENTITY_INSERT [dbo].[Courses] OFF
INSERT [dbo].[Employees] ([UserID], [FirstName], [LastName], [IsManager], [Email], [JobID], [ReportsToID]) VALUES (N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', N'TestEmp', N'Emp', 0, N'test@employee.com', 3, 1)
INSERT [dbo].[Employees] ([UserID], [FirstName], [LastName], [IsManager], [Email], [JobID], [ReportsToID]) VALUES (N'328ab3af-1dc9-45f0-9c59-c35cb8a8344f', N'7test', N'employee', 0, N'7test@employee.com', 3, 1)
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([JobID], [JobName]) VALUES (1, N'Default')
INSERT [dbo].[Jobs] ([JobID], [JobName]) VALUES (2, N'Logistics')
INSERT [dbo].[Jobs] ([JobID], [JobName]) VALUES (3, N'Safety')
INSERT [dbo].[Jobs] ([JobID], [JobName]) VALUES (4, N'Finance')
SET IDENTITY_INSERT [dbo].[Jobs] OFF
SET IDENTITY_INSERT [dbo].[Lessons] ON 

INSERT [dbo].[Lessons] ([LessonID], [LessonTitle], [CourseID], [Introduction], [VideoUrl], [PdfFileName], [IsActive]) VALUES (13, N'TestInactive', 2, NULL, NULL, NULL, 0)
INSERT [dbo].[Lessons] ([LessonID], [LessonTitle], [CourseID], [Introduction], [VideoUrl], [PdfFileName], [IsActive]) VALUES (15, N'TestPlayer', 2, N'via Viewbag', N'https://www.youtube.com/watch?v=d7iRKApQjGI', NULL, 1)
INSERT [dbo].[Lessons] ([LessonID], [LessonTitle], [CourseID], [Introduction], [VideoUrl], [PdfFileName], [IsActive]) VALUES (16, N'TestVideoAndPdf', 2, N'Video and PDF', N'https://www.youtube.com/watch?v=8qDuBRNOVKo', N'20190502jQueryLabs.pdf', 1)
SET IDENTITY_INSERT [dbo].[Lessons] OFF
SET IDENTITY_INSERT [dbo].[LessonViews] ON 

INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (13, N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', 15, CAST(0x9D3F0B00 AS Date))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (14, N'328ab3af-1dc9-45f0-9c59-c35cb8a8344f', 15, CAST(0xA03F0B00 AS Date))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (34, N'328ab3af-1dc9-45f0-9c59-c35cb8a8344f', 16, CAST(0xA03F0B00 AS Date))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (35, N'328ab3af-1dc9-45f0-9c59-c35cb8a8344f', 16, CAST(0xA03F0B00 AS Date))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (36, N'328ab3af-1dc9-45f0-9c59-c35cb8a8344f', 15, CAST(0xA03F0B00 AS Date))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (37, N'328ab3af-1dc9-45f0-9c59-c35cb8a8344f', 15, CAST(0xA03F0B00 AS Date))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (38, N'328ab3af-1dc9-45f0-9c59-c35cb8a8344f', 15, CAST(0xA03F0B00 AS Date))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (39, N'328ab3af-1dc9-45f0-9c59-c35cb8a8344f', 15, CAST(0xA03F0B00 AS Date))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (40, N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', 15, CAST(0xA03F0B00 AS Date))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (41, N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', 16, CAST(0xA03F0B00 AS Date))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (42, N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', 16, CAST(0xA13F0B00 AS Date))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (43, N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', 16, CAST(0xA13F0B00 AS Date))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (44, N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', 16, CAST(0xA13F0B00 AS Date))
INSERT [dbo].[LessonViews] ([LessonViewID], [UserID], [LessonID], [DateViewed]) VALUES (45, N'07ea3f6c-6077-4707-9ad6-94f40fc52fc2', 16, CAST(0xA13F0B00 AS Date))
SET IDENTITY_INSERT [dbo].[LessonViews] OFF
SET IDENTITY_INSERT [dbo].[Managers] ON 

INSERT [dbo].[Managers] ([UserID], [FirstName], [LastName], [JobID], [ManagerID], [Email]) VALUES (N'4e1370d3-2d60-42c8-a99e-a75bc749063f', N'TestManager', N'Manager', 3, 1, N'test@manager.com')
SET IDENTITY_INSERT [dbo].[Managers] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CourseCompletions]  WITH CHECK ADD  CONSTRAINT [FK_CourseCompletions_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[CourseCompletions] CHECK CONSTRAINT [FK_CourseCompletions_Courses]
GO
ALTER TABLE [dbo].[CourseCompletions]  WITH CHECK ADD  CONSTRAINT [FK_CourseCompletions_Employees] FOREIGN KEY([UserID])
REFERENCES [dbo].[Employees] ([UserID])
GO
ALTER TABLE [dbo].[CourseCompletions] CHECK CONSTRAINT [FK_CourseCompletions_Employees]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_AspNetUsers]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Jobs] FOREIGN KEY([JobID])
REFERENCES [dbo].[Jobs] ([JobID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Jobs]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Managers] FOREIGN KEY([ReportsToID])
REFERENCES [dbo].[Managers] ([ManagerID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Managers]
GO
ALTER TABLE [dbo].[Lessons]  WITH CHECK ADD  CONSTRAINT [FK_Lessons_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([CourseID])
GO
ALTER TABLE [dbo].[Lessons] CHECK CONSTRAINT [FK_Lessons_Courses]
GO
ALTER TABLE [dbo].[LessonViews]  WITH CHECK ADD  CONSTRAINT [FK_LessonViews_Employees] FOREIGN KEY([UserID])
REFERENCES [dbo].[Employees] ([UserID])
GO
ALTER TABLE [dbo].[LessonViews] CHECK CONSTRAINT [FK_LessonViews_Employees]
GO
ALTER TABLE [dbo].[LessonViews]  WITH CHECK ADD  CONSTRAINT [FK_LessonViews_Lessons] FOREIGN KEY([LessonID])
REFERENCES [dbo].[Lessons] ([LessonID])
GO
ALTER TABLE [dbo].[LessonViews] CHECK CONSTRAINT [FK_LessonViews_Lessons]
GO
ALTER TABLE [dbo].[Managers]  WITH CHECK ADD  CONSTRAINT [FK_Managers_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Managers] CHECK CONSTRAINT [FK_Managers_AspNetUsers]
GO
