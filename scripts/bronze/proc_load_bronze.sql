INSERT INTO bronze.DimCountry (country_code, country_name)
VALUES
('US', 'United States'),
('GB', 'United Kingdom'),
('CA', 'Canada'),
('FR', 'France'),
('DE', 'Germany'),
('JP', 'Japan'),
('KR', 'South Korea'),
('RU', 'Russia'),
('IN', 'India'),
('MX', 'Mexico');


INSERT INTO bronze.DimCategory (category_id, category_name) VALUES
(1, 'Film & Animation'),
(2, 'Autos & Vehicles'),
(10, 'Music'),
(15, 'Pets & Animals'),
(17, 'Sports'),
(18, 'Short Movies'),
(19, 'Travel & Events'),
(20, 'Gaming'),
(21, 'Videoblogging'),
(22, 'People & Blogs'),
(23, 'Comedy'),
(24, 'Entertainment'),
(25, 'News & Politics'),
(26, 'Howto & Style'),
(27, 'Education'),
(28, 'Science & Technology'),
(29, 'Nonprofits & Activism'),
(30, 'Movies'),
(31, 'Anime/Animation'),
(32, 'Action/Adventure'),
(33, 'Classics'),
(34, 'Comedy'),
(35, 'Documentary'),
(36, 'Drama'),
(37, 'Family'),
(38, 'Foreign'),
(39, 'Horror'),
(40, 'Sci-Fi/Fantasy'),
(41, 'Thriller'),
(42, 'Shorts'),
(43, 'Shows'),
(44, 'Trailers');


DECLARE @startDate DATE = '2015-01-01';
DECLARE @endDate DATE = '2025-12-31';

WHILE (@startDate <= @endDate)
BEGIN
    INSERT INTO bronze.DimDate (date_id, date, day, month, year, weekday)
    VALUES (
        CONVERT(INT, FORMAT(@startDate, 'yyyyMMdd')),
        @startDate,
        DAY(@startDate),
        MONTH(@startDate),
        YEAR(@startDate),
        DATENAME(WEEKDAY, @startDate)
    );

    SET @startDate = DATEADD(DAY, 1, @startDate);
END;
