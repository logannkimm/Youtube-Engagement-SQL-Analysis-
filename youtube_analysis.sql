-- User Engagement Analysis

-- 1. Ranked videos by total likes to discover the highest-liked videos
SELECT title, channel_title, views, likes, dislikes, comment_count 
FROM youtube.trending
ORDER BY likes DESC;

-- 2. Filtering to find the 10 most commented videos on YouTube
SELECT title, channel_title, views, likes, dislikes, comment_count 
FROM youtube.trending
ORDER BY comment_count DESC
LIMIT 10;

-- 3. Identifying the 100th most commented on video
SELECT title, channel_title, views, likes, dislikes, comment_count 
FROM youtube.trending
ORDER BY comment_count DESC
OFFSET 99;
