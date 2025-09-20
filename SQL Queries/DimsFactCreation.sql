--CREATE THE DATABASE CALLED YoutubeSTG
CREATE DATABASE YoutubeSTG;

USE YoutubeSTG;
GO

--1)CREATE TABLE COUNTRY
CREATE TABLE Country(
CountryID INT PRIMARY KEY IDENTITY,
Country NVARCHAR(24)
)

--2)CREATE TABLE CHANNELS
CREATE TABLE Channels(
ChannelID INT PRIMARY KEY IDENTITY,
ChannelTitle VARCHAR(255)
)

--3)CREATE TABLE CATEGORY
CREATE TABLE Category(
CategoryID INT PRIMARY KEY IDENTITY,
Category VARCHAR(50)
)

--4)CREATE TABLE MAPPING-CAT
CREATE TABLE CategoryMap(
CategoryID INT NOT NULL UNIQUE,
Category VARCHAR(100)
)

--INSERT THE MAPPED DATA FOR THE CATEGORY MAP
INSERT INTO CategoryMap (CategoryID, Category) VALUES (1, 'Film & Animation');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (2, 'Autos & Vehicles');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (10, 'Music');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (15, 'Pets & Animals');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (17, 'Sports');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (18, 'Short Movies');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (19, 'Travel & Events');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (20, 'Gaming');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (21, 'Videoblogging');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (22, 'People & Blogs');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (23, 'Comedy');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (24, 'Entertainment');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (25, 'News & Politics');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (26, 'Howto & Style');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (27, 'Education');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (28, 'Science & Technology');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (29, 'Nonprofits & Activism');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (30, 'Movies');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (31, 'Anime/Animation');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (32, 'Action/Adventure');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (33, 'Classics');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (34, 'Comedy');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (35, 'Documentary');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (36, 'Drama');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (37, 'Family');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (38, 'Foreign');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (39, 'Horror');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (40, 'Sci-Fi/Fantasy');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (41, 'Thriller');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (42, 'Shorts');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (43, 'Shows');
INSERT INTO CategoryMap (CategoryID, Category) VALUES (44, 'Trailers');


--4)CREATE TABLE videosFact
CREATE TABLE VideosFact(
VideoID INT PRIMARY KEY IDENTITY,
ViewCounts INT,
Likes INT,
Dislikes INT,
CommentsCount INT,
CommentsDisabled INT,
RatesDisabled INT,
PublishDate DATE,
TrendDate DATE,
ChannelTitle VARCHAR(255),
Country NVARCHAR(50),
Category VARCHAR(50)
)