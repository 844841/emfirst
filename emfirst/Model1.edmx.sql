
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/18/2020 10:27:37
-- Generated from EDMX file: d:\Users\Admin\source\repos\emfirst\emfirst\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [suchi];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'schools'
CREATE TABLE [dbo].[schools] (
    [sid] int IDENTITY(1,1) NOT NULL,
    [sname] nvarchar(max)  NOT NULL,
    [sloc] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'students'
CREATE TABLE [dbo].[students] (
    [stId] int IDENTITY(1,1) NOT NULL,
    [stname] nvarchar(max)  NOT NULL,
    [examdate] datetime  NOT NULL,
    [examcode] int NOT NULL constraint f_k foreign key references exams(examcode),
    [centercode] int  NOT NULL constraint fk foreign key references schools(sid),
);
GO

-- Creating table 'results'
CREATE TABLE [dbo].[results] (
    [stno] int IDENTITY(1,1) NOT NULL,
    [semmarks] int  NOT NULL,
    [maxmarks] int  NOT NULL,
    [percentage] int  NOT NULL
);
GO

-- Creating table 'exams'
CREATE TABLE [dbo].[exams] (
    [examcode] int IDENTITY(1,1)  NOT NULL,
    [examname] nvarchar(max)  NOT NULL,
    [examdate] datetime  NOT NULL,
    [maxmarks] int  NOT NULL,
    [cutoff] int  NOT NULL,
    [time] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [sid] in table 'schools'
ALTER TABLE [dbo].[schools]
ADD CONSTRAINT [PK_schools]
    PRIMARY KEY CLUSTERED ([sid] ASC);
GO

-- Creating primary key on [stId] in table 'students'
ALTER TABLE [dbo].[students]
ADD CONSTRAINT [PK_students]
    PRIMARY KEY CLUSTERED ([stId] ASC);
GO

-- Creating primary key on [stno] in table 'results'
ALTER TABLE [dbo].[results]
ADD CONSTRAINT [PK_results]
    PRIMARY KEY CLUSTERED ([stno] ASC);
GO

-- Creating primary key on [examcode] in table 'exams'
ALTER TABLE [dbo].[exams]
ADD CONSTRAINT [PK_exams]
    PRIMARY KEY CLUSTERED ([examcode] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------