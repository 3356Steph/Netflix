SELECT COUNT(*) FROM cast
UNION
SELECT COUNT(*) FROM category;


SELECT DISTINCT Cast_ID FROM cast;

-- Total Number of Shows by Type (Movie or TV Show)

SELECT type, COUNT(*) AS total_shows
FROM netflix_titles
GROUP BY type;

-- Most Common Ratings for Shows

SELECT r.rating, COUNT(*) as Count
FROM netflix_titles nt
INNER JOIN rating r ON nt.Rating_ID = r.Rating_ID
GROUP BY rating
ORDER BY Count DESC;

--  Top 20 Most Popular Shows by Release Year with ratings

SELECT title, release_year, rating
FROM netflix_titles nt
LEFT JOIN rating r
ON nt.Rating_ID =  r.Rating_ID
ORDER BY release_year DESC
LIMIT 20;

-- Count of shows by Category

SELECT c.Category, COUNT(*) AS show_count
FROM show_category sc
JOIN category c ON sc.Cat_ID = c.Cast_ID
GROUP BY c.Category
ORDER BY show_count DESC;

-- Shows Featuring Specific Cast Members

SELECT nt.title, c.name
FROM show_cast sc
INNER JOIN cast c ON sc.Cast_ID = c.Cast_ID
INNER JOIN netflix_titles nt ON sc.show_id = nt.show_id
WHERE c.name = 'Brandon Fierro';

-- Show members appearing in multiple shows

SELECT c.Name, COUNT(DISTINCT sc.show_id) AS shows_count
FROM show_cast sc
JOIN cast c ON sc.Cast_ID = c.Cast_ID
GROUP BY c.Name
ORDER BY shows_count DESC;

-- Most Recent Show in Each Category

SELECT c.Category, nt.title, nt.release_year
FROM show_category sc
JOIN category c ON sc.Cat_ID = c.Cast_ID
JOIN netflix_titles nt ON sc.show_id = nt.show_id
WHERE nt.release_year = (
    SELECT MAX(release_year)
    FROM netflix_titles nt
    WHERE show_id = nt.show_id
) 
ORDER BY c.Category;



