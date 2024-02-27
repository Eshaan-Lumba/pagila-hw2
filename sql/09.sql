/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 */

SELECT f as special_features, count(f)
FROM (
    SELECT unnest(special_features) as f
    FROM film
) sub
GROUP BY f
ORDER BY f;
