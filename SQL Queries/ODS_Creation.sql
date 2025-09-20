--CREATE THE DATABASE CALLED YoutubeODS FOR THE DATA ODS STAGE
CREATE DATABASE YoutubeODS;

USE YoutubeODS;
GO

CREATE TABLE videos(
VideoID VARCHAR(50),
PublisheDate VARCHAR(50),
ChannelID VARCHAR(50),
ChannelTitle VARCHAR(255),
CategoryID INT,
TrendingDate VARCHAR(50),
ViewCount INT,
Likes INT,
Dislikes INT,
CommentCount INT,
CommentsDisabled BIT,
RatingsDisabled	BIT,
Country NVARCHAR(24)
)
