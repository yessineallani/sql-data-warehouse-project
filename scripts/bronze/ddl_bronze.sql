IF OBJECT_ID('bronze.DE_videos', 'U') IS NOT NULL
    DROP TABLE bronze.DE_videos;
GO

CREATE TABLE bronze.DE_videos (
    video_id VARCHAR(100),
    trending_date VARCHAR(50),
    title NVARCHAR(MAX),
    channel_title NVARCHAR(500),
    category_id VARCHAR(50), 
    publish_time VARCHAR(50),
    tags NVARCHAR(MAX),
    views VARCHAR(50),
    likes VARCHAR(50),
    dislikes VARCHAR(50),
    comment_count VARCHAR(50),
    thumbnail_link NVARCHAR(500),
    comments_disabled VARCHAR(50),  
    ratings_disabled VARCHAR(50),
    video_error_or_removed VARCHAR(50),
    description NVARCHAR(MAX)
);
GO

IF OBJECT_ID('bronze.GB_videos', 'U') IS NOT NULL
    DROP TABLE bronze.GB_videos;
GO

CREATE TABLE bronze.GB_videos (
    video_id VARCHAR(100),
    trending_date VARCHAR(50),
    title NVARCHAR(MAX),
    channel_title NVARCHAR(500),
    category_id VARCHAR(50), 
    publish_time VARCHAR(50),
    tags NVARCHAR(MAX),
    views VARCHAR(50),
    likes VARCHAR(50),
    dislikes VARCHAR(50),
    comment_count VARCHAR(50),
    thumbnail_link NVARCHAR(500),
    comments_disabled VARCHAR(50),  
    ratings_disabled VARCHAR(50),
    video_error_or_removed VARCHAR(50),
    description NVARCHAR(MAX)
);
GO

IF OBJECT_ID('bronze.IN_videos', 'U') IS NOT NULL
    DROP TABLE bronze.IN_videos;
GO

CREATE TABLE bronze.IN_videos (
    video_id VARCHAR(100),
    trending_date VARCHAR(50),
    title NVARCHAR(MAX),
    channel_title NVARCHAR(500),
    category_id VARCHAR(50), 
    publish_time VARCHAR(50),
    tags NVARCHAR(MAX),
    views VARCHAR(50),
    likes VARCHAR(50),
    dislikes VARCHAR(50),
    comment_count VARCHAR(50),
    thumbnail_link NVARCHAR(500),
    comments_disabled VARCHAR(50),  
    ratings_disabled VARCHAR(50),
    video_error_or_removed VARCHAR(50),
    description NVARCHAR(MAX)
);
GO

IF OBJECT_ID('bronze.JP_videos', 'U') IS NOT NULL
    DROP TABLE bronze.JP_videos;
GO

CREATE TABLE bronze.JP_videos (
    video_id VARCHAR(100),
    trending_date VARCHAR(50),
    title NVARCHAR(MAX),
    channel_title NVARCHAR(500),
    category_id VARCHAR(50), 
    publish_time VARCHAR(50),
    tags NVARCHAR(MAX),
    views VARCHAR(50),
    likes VARCHAR(50),
    dislikes VARCHAR(50),
    comment_count VARCHAR(50),
    thumbnail_link NVARCHAR(500),
    comments_disabled VARCHAR(50),  
    ratings_disabled VARCHAR(50),
    video_error_or_removed VARCHAR(50),
    description NVARCHAR(MAX)
);
GO

IF OBJECT_ID('bronze.KR_videos', 'U') IS NOT NULL
    DROP TABLE bronze.KR_videos;
GO

CREATE TABLE bronze.KR_videos (
    video_id VARCHAR(100),
    trending_date VARCHAR(50),
    title NVARCHAR(MAX),
    channel_title NVARCHAR(500),
    category_id VARCHAR(50), 
    publish_time VARCHAR(50),
    tags NVARCHAR(MAX),
    views VARCHAR(50),
    likes VARCHAR(50),
    dislikes VARCHAR(50),
    comment_count VARCHAR(50),
    thumbnail_link NVARCHAR(500),
    comments_disabled VARCHAR(50),  
    ratings_disabled VARCHAR(50),
    video_error_or_removed VARCHAR(50),
    description NVARCHAR(MAX)
);
GO

IF OBJECT_ID('bronze.MX_videos', 'U') IS NOT NULL
    DROP TABLE bronze.MX_videos;
GO

CREATE TABLE bronze.MX_videos (
    video_id VARCHAR(100),
    trending_date VARCHAR(50),
    title NVARCHAR(MAX),
    channel_title NVARCHAR(500),
    category_id VARCHAR(50), 
    publish_time VARCHAR(50),
    tags NVARCHAR(MAX),
    views VARCHAR(50),
    likes VARCHAR(50),
    dislikes VARCHAR(50),
    comment_count VARCHAR(50),
    thumbnail_link NVARCHAR(500),
    comments_disabled VARCHAR(50),  
    ratings_disabled VARCHAR(50),
    video_error_or_removed VARCHAR(50),
    description NVARCHAR(MAX)
);
GO

IF OBJECT_ID('bronze.RU_videos', 'U') IS NOT NULL
    DROP TABLE bronze.RU_videos;
GO

CREATE TABLE bronze.RU_videos (
    video_id VARCHAR(100),
    trending_date VARCHAR(50),
    title NVARCHAR(MAX),
    channel_title NVARCHAR(500),
    category_id VARCHAR(50), 
    publish_time VARCHAR(50),
    tags NVARCHAR(MAX),
    views VARCHAR(50),
    likes VARCHAR(50),
    dislikes VARCHAR(50),
    comment_count VARCHAR(50),
    thumbnail_link NVARCHAR(500),
    comments_disabled VARCHAR(50),  
    ratings_disabled VARCHAR(50),
    video_error_or_removed VARCHAR(50),
    description NVARCHAR(MAX)
);

IF OBJECT_ID('bronze.US_videos', 'U') IS NOT NULL
    DROP TABLE bronze.US_videos;
GO

CREATE TABLE bronze.US_videos (
    video_id VARCHAR(100),
    trending_date VARCHAR(50),
    title NVARCHAR(MAX),
    channel_title NVARCHAR(500),
    category_id VARCHAR(50), 
    publish_time VARCHAR(50),
    tags NVARCHAR(MAX),
    views VARCHAR(50),
    likes VARCHAR(50),
    dislikes VARCHAR(50),
    comment_count VARCHAR(50),
    thumbnail_link NVARCHAR(500),
    comments_disabled VARCHAR(50),  
    ratings_disabled VARCHAR(50),
    video_error_or_removed VARCHAR(50),
    description NVARCHAR(MAX)
);

IF OBJECT_ID('bronze.YouTube_CA', 'U') IS NOT NULL
    DROP TABLE bronze.YouTube_CA;
GO

CREATE TABLE bronze.YouTube_CA (
    video_id VARCHAR(100),
    trending_date VARCHAR(50),
    title NVARCHAR(MAX),
    channel_title NVARCHAR(500),
    category_id VARCHAR(50), 
    publish_time VARCHAR(50),
    tags NVARCHAR(MAX),
    views VARCHAR(50),
    likes VARCHAR(50),
    dislikes VARCHAR(50),
    comment_count VARCHAR(50),
    thumbnail_link NVARCHAR(500),
    comments_disabled VARCHAR(50),  
    ratings_disabled VARCHAR(50),
    video_error_or_removed VARCHAR(50),
    description NVARCHAR(MAX)
);


-------------------------------------------------

IF OBJECT_ID('bronze.DimCountry', 'U') IS NOT NULL
    DROP TABLE bronze.DimCountry;
GO

CREATE TABLE bronze.DimCountry (
    country_code CHAR(2) PRIMARY KEY,
    country_name VARCHAR(50)
);
GO


IF OBJECT_ID('bronze.DimCategory', 'U') IS NOT NULL
    DROP TABLE bronze.DimCategory;
GO

CREATE TABLE bronze.DimCategory (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);
GO


IF OBJECT_ID('bronze.DimChannel', 'U') IS NOT NULL
    DROP TABLE bronze.DimChannel;
GO

CREATE TABLE bronze.DimChannel (
    channel_id INT IDENTITY(1,1) PRIMARY KEY,  
    channel_title VARCHAR(255)
);
GO


IF OBJECT_ID('bronze.DimVideo', 'U') IS NOT NULL
    DROP TABLE bronze.DimVideo;
GO

CREATE TABLE bronze.DimVideo (
    video_id VARCHAR(20) PRIMARY KEY,
    title VARCHAR(255),
    publish_time DATETIME,
    tags VARCHAR(MAX),
    description VARCHAR(MAX),
    thumbnail_link VARCHAR(MAX),
    comments_disabled BIT,        
    ratings_disabled BIT,
    video_error_or_removed BIT
);
GO

IF OBJECT_ID('bronze.DimDate', 'U') IS NOT NULL
    DROP TABLE bronze.DimDate;
GO

CREATE TABLE bronze.DimDate (
    date_id INT PRIMARY KEY,
    date DATE,
    day INT,
    month INT,
    year INT,
    weekday VARCHAR(10)
);
GO

IF OBJECT_ID('bronze.FactYouTubeTrending', 'U') IS NOT NULL
    DROP TABLE bronze.FactYouTubeTrending;
GO

CREATE TABLE bronze.FactYouTubeTrending (
    fact_id INT IDENTITY(1,1) PRIMARY KEY,
    video_id VARCHAR(20),
    channel_id INT,
    category_id INT,
    country_code CHAR(2),
    date_id INT,
    views INT,
    likes INT,
    dislikes INT,
    comment_count INT,
    engagement_score FLOAT,

    FOREIGN KEY (video_id) REFERENCES bronze.DimVideo(video_id),
    FOREIGN KEY (channel_id) REFERENCES bronze.DimChannel(channel_id),
    FOREIGN KEY (category_id) REFERENCES bronze.DimCategory(category_id),
    FOREIGN KEY (country_code) REFERENCES bronze.DimCountry(country_code),
    FOREIGN KEY (date_id) REFERENCES bronze.DimDate(date_id)
);
GO

