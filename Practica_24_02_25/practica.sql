USE ventas;
SHOW TABLES;
DESC orden;

SELECT * 
FROM orden
WHERE DAY(fecha) = 28
ORDER BY DAY(fecha) DESC;

SELECT * 
FROM orden
WHERE MONTH(fecha) = 2
ORDER BY DAY(fecha) DESC;

SELECT * 
FROM orden
WHERE MONTH(fecha) != 7
ORDER BY DAY(fecha) DESC;

SELECT * 
FROM orden
WHERE MONTH(fecha) IN(3, 7, 9)
ORDER BY DAY(fecha) DESC;

SELECT * 
FROM orden
WHERE YEAR(fecha) = 2023 AND MONTH(fecha) BETWEEN 4 AND 11
ORDER BY MONTH(fecha) ASC;

SELECT * 
FROM orden
WHERE YEAR(fecha) = 2024 AND DAY(fecha) BETWEEN 15 AND 28
ORDER BY MONTH(fecha), DAY(fecha) ASC;

SELECT MONTH(fecha) AS mes, SUM(costo) AS suma_monto
FROM orden
WHERE costo < 30
GROUP BY MONTH(fecha)
ORDER BY suma_monto ASC;

SELECT MONTH(fecha) AS mes, SUM(costo) AS suma
FROM orden
GROUP BY MONTH(fecha)
HAVING suma > 400
ORDER BY MONTH(fecha) DESC;

SELECT YEAR(fecha) AS año, MONTH(fecha) AS mes, MAX(costo) AS maximo
FROM orden
GROUP BY YEAR(fecha), MONTH(fecha);
