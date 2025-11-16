
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

