-- Comments in SQL Start with dash-dash --

--1. Find the app with an ID of 1880.
SELECT app_name FROM analytics WHERE id = 1880;

--2. Find the ID and app name for all apps that were last updated on August 01, 2018.
SELECT id, app_name FROM analytics WHERE last_updated = 'August 01, 2018';

--3. Count the number of apps in each category, e.g. “Family | 1972”.
SELECT category, COUNT(app_name) FROM analytics GROUP BY category;

--4. Find the top 5 most-reviewed apps and the number of reviews for each.
    -- do SELECT app_name, reviews FROM analytics; then do  SELECT app_name, reviews FROM analytics where reviews >=  66577313;
SELECT app_name, reviews FROM analytics where reviews >= 69109672;

--5. Find the app that has the most reviews with a rating greater than equal to 4.8.
SELECT app_name, reviews FROM analytics where rating >= 4.8 ORDER BY reviews desc;

--6.Find the average rating for each category ordered by the highest rated to lowest rated.
SELECT category, AVG(rating) AS Average_Rating FROM analytics GROUP BY category ORDER BY Average_Rating desc;

--7. Find the name, price, and rating of the most expensive app with a rating that’s less than 3.
    -- do this SELECT MAX(price) FROM analytics WHERE rating < 3; And do this
    select app_name, price, rating, MAX(price) from analytics HAVING rating < 3 ORDER BY MAX(price);

--8. Find all apps with a min install not exceeding 50, that have a rating. Order your results by highest rated first.

--9. Find the names of all apps that are rated less than 3 with at least 10000 reviews.

--10. Find the top 10 most-reviewed apps that cost between 10 cents and a dollar.

--11. Find the most out of date app. Hint: You don’t need to do it this way, but it’s possible to do with a subquery:
-- http://www.postgresqltutorial.com/postgresql-max-function/


--12. Find the most expensive app (the query is very similar to #11).

--13. Count all the reviews in the Google Play Store.

--14. Find all the categories that have more than 300 apps in them.





