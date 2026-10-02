-- Correlated Subquery Practice
-- Find customers who are not the oldest in their country.
-- Show the customer's age, the oldest age in their country,
-- and how many years younger they are than the oldest customer.

SELECT c.name, c.age,
       (SELECT MAX(age)
        FROM customers AS ca
        WHERE c.country_id = ca.country_id) AS country_oldest_age,

       (SELECT MAX(age)
        FROM customers AS ca
        WHERE c.country_id = ca.country_id) - c.age
        AS years_younger_than_oldest

FROM customers AS c

WHERE EXISTS (
    SELECT 1
    FROM customers AS ca
    WHERE ca.age > c.age
      AND c.country_id = ca.country_id
);