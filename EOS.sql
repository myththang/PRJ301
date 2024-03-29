USE [master]
GO
/****** Object:  Database [EOS]    Script Date: 7/1/2023 6:24:59 PM ******/
CREATE DATABASE [EOS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EOS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\EOS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EOS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\EOS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [EOS] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EOS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EOS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EOS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EOS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EOS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EOS] SET ARITHABORT OFF 
GO
ALTER DATABASE [EOS] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EOS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EOS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EOS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EOS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EOS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EOS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EOS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EOS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EOS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EOS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EOS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EOS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EOS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EOS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EOS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EOS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EOS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EOS] SET  MULTI_USER 
GO
ALTER DATABASE [EOS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EOS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EOS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EOS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EOS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EOS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [EOS] SET QUERY_STORE = ON
GO
ALTER DATABASE [EOS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [EOS]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 7/1/2023 6:25:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[examcode_id] [int] NOT NULL,
	[student_id] [varchar](50) NOT NULL,
	[question_id] [int] NOT NULL,
	[choice] [varchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[examcode_id] ASC,
	[student_id] ASC,
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Examcode]    Script Date: 7/1/2023 6:25:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Examcode](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[Duration] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 7/1/2023 6:25:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[id] [int] NOT NULL,
	[question] [text] NOT NULL,
	[answerA] [text] NULL,
	[answerB] [text] NULL,
	[answerC] [text] NULL,
	[answerD] [text] NULL,
	[eid] [int] NOT NULL,
	[Answer] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/1/2023 6:25:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Answer] ([examcode_id], [student_id], [question_id], [choice]) VALUES (1, N'SE170301', 1, N'B')
INSERT [dbo].[Answer] ([examcode_id], [student_id], [question_id], [choice]) VALUES (1, N'SE170301', 2, N'A')
INSERT [dbo].[Answer] ([examcode_id], [student_id], [question_id], [choice]) VALUES (1, N'SE170301', 3, N'A')
INSERT [dbo].[Answer] ([examcode_id], [student_id], [question_id], [choice]) VALUES (1, N'SE170301', 4, N'B')
INSERT [dbo].[Answer] ([examcode_id], [student_id], [question_id], [choice]) VALUES (1, N'SE170301', 5, N'A')
INSERT [dbo].[Answer] ([examcode_id], [student_id], [question_id], [choice]) VALUES (1, N'SE170301', 7, N'A')
INSERT [dbo].[Answer] ([examcode_id], [student_id], [question_id], [choice]) VALUES (2, N'SE170000', 12, N'A')
INSERT [dbo].[Answer] ([examcode_id], [student_id], [question_id], [choice]) VALUES (2, N'SE170000', 13, N'A')
INSERT [dbo].[Answer] ([examcode_id], [student_id], [question_id], [choice]) VALUES (2, N'SE170000', 14, N'C')
INSERT [dbo].[Answer] ([examcode_id], [student_id], [question_id], [choice]) VALUES (2, N'SE170000', 15, N'B')
INSERT [dbo].[Answer] ([examcode_id], [student_id], [question_id], [choice]) VALUES (2, N'SE170301', 12, N'A')
INSERT [dbo].[Answer] ([examcode_id], [student_id], [question_id], [choice]) VALUES (2, N'SE170301', 13, N'B')
INSERT [dbo].[Answer] ([examcode_id], [student_id], [question_id], [choice]) VALUES (2, N'SE170301', 14, N'C')
INSERT [dbo].[Answer] ([examcode_id], [student_id], [question_id], [choice]) VALUES (2, N'SE170301', 15, N'D')
GO
INSERT [dbo].[Examcode] ([id], [name], [Duration]) VALUES (1, N'PRJ301', 60)
INSERT [dbo].[Examcode] ([id], [name], [Duration]) VALUES (2, N'MAS291', 60)
GO
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (1, N'Which of the following statements are correct about the status of the Http response? Select the one correct answer', N'A status of 200 to 299 signifies that the request was successful.', N'A status of 300 to 399 is informational messages.', N'A status of 400 to 499 indicates an error in the server', N'A status of 500 to 599 indicates an error in the client.', 1, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (2, N'Classes HttpServlet and GenericServlet implement the ___ interface.', N'Servlet', N'Http', N'HttpServletRequest', N'HttpServletResponse', 1, N'B')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (3, N'You have to send a gif image to the client as a response to a request. Which of the following calls will you have to make?', N'response.setContentType("image/gif");', N'response.setType("application/gif");', N'response.setContentType("application/bin");', N'response.setType("image/gif");', 1, N'C')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (4, N'Which method of ReportGeneratorServlet will be called when the user clicks on the URL shown by the following HTML.
Assume that ReportGeneratorServlet does not override the service(HttpServletRequest, HttpServletResponse) method of the HttpServlet class.
(Choose one)', N'doGet(HttpServletRequest, HttpServletResponse);', N'doPost(HttpServletRequest, HttpServletResponse);', N'doHead(HttpServletRequest, HttpServletResponse);', N'doOption(HttpServletRequest, HttpServletResponse);', 1, N'D')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (5, N'Which of the following is indicated by URL, which is used on the Internet?', N' Information resources(sources) on the Internet', N'E-mail addresses for use in the Internet', N' IP addresses of servers connected to the Internet', N'Owners of PCs connected to the Internet', 1, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (6, N'Identify correct statement about a WAR file.(Choose one)', N'It is an XML document.', N'It cannot be unpackaged by the container.', N'It is used by web application developer to deliver the web application in a single unit.', N'It contains web components such as servlets as well as EJBs.', 1, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (7, N'A .................... manages the threading for the servlets and JSPs and provides the necessary interface with the Web server.', N'Web Container', N'EJB Container', N'Servlets', N'Applets', 1, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (8, N'A ________has a name, a single value, and optional attributes such as a comment, path and domain qualifiers, a maximum age, and a version number.', N'Cookie', N'Session', N'Request', N'Response', 1, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (9, N'Which of the following method calls can be used to retrieve an object from the session that was stored using the name "roleName"?', N'getObject("roleName");', N'getValue("roleName");', N'getAttribute("roleName");', N'getParameter("roleName");', 1, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (10, N'Which is NOT a standard technique for a session be definitely invalidated?', N'The container is shutdown and brought up again.', N'No request comes from the client for more than "session timeout" period.', N'A servlet explicitly calls invalidate() on a session object.', N'If the session time out is set to 0 using setMaxInactiveInterval() method.', 1, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (11, N'Data that describe a characteristic about a population is known as a ________.', N'parameter', N'sample', N'statistic', N'survey', 2, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (12, N'A method of gathering data while the subjects of interest are in their natural environment, often unaware they are being watched, is known as____________
', N'observation.', N'experiments.', N'retrospective', N'None of the other choices is correct', 2, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (13, N'The manager at the ABT restaurant wanted to investigate the effect of music on the average revenue per customer. Each night for one month, fast-paced music was played. The following month, slow-paced music was played every night. The average revenue per customer for each month was compared. This method of gathering data is known as', N'experiments.', N'observation.', N' retrospective', N'None of the other choices is correct', 2, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (14, N'A method of gathering data when subjects are exposed to certain treatments and the data of interest is recorded is known as_________________', N'experiments.', N'observation.', N' retrospective', N'None of the other choices is correct', 2, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (15, N'An event is ____________', N'a collection of elementary events.', N'the list of possible outcomes that can occur from a selection or decision', N'similar to an experiment but not controlled by the decision maker.', N'more frequently found in business than in other disciplines.', 2, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (16, N'Those methods involving the collection, presentation, and characterization of a set of data in order to properly describe the various features of that set of data are called____________
', N'statistical inference.', N'descriptive statistics.', N'sampling.', N'the scientific method.', 2, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (17, N'A ________ represents all possible subjects of interest.
', N'population', N'statistic', N'parameter', N'sample
', 2, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (18, N'To dertermine the difference, if any, between two brands of radial tires, 12 tires of each brand are tested. Assum that the life times of both brands of tires come from the same normal distribution N(m,3300^2). The distribution of the difference of the sample mean X-Y.', N'None of the other choice is correct', N'is standard normal', N'is normal with mean 0 and standard deviation 1347.22', N'is normal with mean m and variance 1347.22', 2, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (19, N'Compute the sample standard deviation of the heights (in inches) of three men with heights of 64.9, 65, 65.5', N'4.174', N'3.652', N'0.321', N'1.911', 2, N'A')
INSERT [dbo].[Quiz] ([id], [question], [answerA], [answerB], [answerC], [answerD], [eid], [Answer]) VALUES (20, N'An engineering professional body estimates that 70% of the student taking undergraduate engineering courses are in favour of studying of statistics as part of their studies. If this estimate is correct, use normal fomula for Binomial distributions to approximate the probabilit that more than 700 undergraduate engineers out of a random sample of 1000 will be in favour of studying statistics.
Let P(Z<0.035) = 0.514, P(Z<0) = 0.5', N' 0.486', N'0.643', N'0.5', N'0.514', 2, N'A')
GO
INSERT [dbo].[Student] ([id], [username], [password], [name]) VALUES (N'SE170000', N'admin', N'123', N'admin')
INSERT [dbo].[Student] ([id], [username], [password], [name]) VALUES (N'SE170301', N'thangnxhe170301', N'123', N'ThangNX')
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [fk_examcode] FOREIGN KEY([examcode_id])
REFERENCES [dbo].[Examcode] ([id])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [fk_examcode]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [fk_question] FOREIGN KEY([question_id])
REFERENCES [dbo].[Quiz] ([id])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [fk_question]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [fk_student] FOREIGN KEY([student_id])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [fk_student]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [fk_eid] FOREIGN KEY([eid])
REFERENCES [dbo].[Examcode] ([id])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [fk_eid]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [chk_choice] CHECK  (([choice]='D' OR [choice]='C' OR [choice]='B' OR [choice]='A'))
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [chk_choice]
GO
USE [master]
GO
ALTER DATABASE [EOS] SET  READ_WRITE 
GO
