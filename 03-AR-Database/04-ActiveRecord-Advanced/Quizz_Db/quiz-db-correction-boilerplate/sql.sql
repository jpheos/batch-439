-- 6. What's the query to get books written before 1985?


SELECT *
FROM books
WHERE publishing_year < 1985;

-- Book.where('publishing_year < ?', 1985)


-- 7. What's the query get the three most recent
--    books written by Jules Verne?

