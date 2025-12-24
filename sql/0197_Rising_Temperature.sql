WITH comparison AS(
    SELECT
        id,
        temperature,
        LAG(temperature)OVER(ORDER BY id) AS prev_temperature
        FROM Weather
)
SELECT id
FROM comparison
Where temperature > prev_temperature;