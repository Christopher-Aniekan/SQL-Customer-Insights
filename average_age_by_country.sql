SELECT c.name,
		c.age
FROM customers AS c
WHERE c.age > (
				SELECT AVG(age) AS country_average_age
                FROM customers AS ca
                WHERE c.country_id = ca.country_id);
                