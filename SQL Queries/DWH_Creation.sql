--CREATE THE DATABASE CALLED YoutubeSTG
CREATE DATABASE YoutubeDWH;

USE YoutubeDWH;
GO

--1)CREATE TABLE COUNTRY
CREATE TABLE Country(
CountryID INT PRIMARY KEY,
Country NVARCHAR(24)
)

--2)CREATE TABLE CHANNELS
CREATE TABLE Channels(
ChannelID INT PRIMARY KEY ,
ChannelTitle VARCHAR(255)
)

--3)CREATE TABLE CATEGORY
CREATE TABLE Category(
CategoryID INT PRIMARY KEY ,
Category VARCHAR(50)
)

--4)CREATE TABLE DATE
CREATE TABLE Date(
DateID INT PRIMARY KEY,
Date DATE,
Day INT,
Month INT,
Year INT
)

--5)CREATE TABLE videosFact
CREATE TABLE VideosFact(
VideoID INT PRIMARY KEY,
ViewCounts INT,
Likes INT,
Dislikes INT,
CommentsCount INT,
CommentsDisabled INT,
RatesDisabled INT,
PublishDateID INT,
TrendDateID INT,
ChannelID INT,
CountryID INT,
CategoryID INT
)

delete from [dbo].[Channels]

ALTER TABLE Channels
ALTER COLUMN ChannelTitle NVARCHAR(255)

ALTER TABLE YoutubeSTG.dbo.Channels
ALTER COLUMN ChannelTitle NVARCHAR(255)


ALTER TABLE YoutubeSTG.dbo.VideosFact
ALTER COLUMN ChannelTitle NVARCHAR(255)

ALTER TABLE YoutubeODS.dbo.videos
ALTER COLUMN ChannelTitle NVARCHAR(255)
