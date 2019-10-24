--Step #1
/** this creates the Books table with a primary key and 2 foreign keys **/
CREATE TABLE [dbo].[Books](
	[BookID] [int] NOT NULL,
	[BookName] [varchar](75) NULL,
	[AuthorID] [int] NULL,
	[PublishedDate] [datetime] NULL,
	[CategoryID] [int] NULL,
	[SalesVolume] [int] null
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

--Step #2 
/** this creates the Category table **/
CREATE TABLE dbo.Category
(
CategoryID int primary key,
CategoryName varchar(40) not null 
)

 /** execute this only after creating the Category table **/
ALTER TABLE [dbo].[Books]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO

--Step #3
/** this creates the Authors table **/
CREATE TABLE [dbo].[Authors](
	[AuthorID] [int] NOT NULL,
	[AuthorFirstName] [varchar](50) NOT NULL,
	[AuthorLastName] [varchar](100) NOT NULL,
	[AuthorDOB] [datetime] NULL,
	[AuthorNationality] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Books]  WITH CHECK ADD FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Authors] ([AuthorID])
GO