-- Consultar el promedio de generación DC por cada inversor durante las horas de sol
SELECT AVG(dc_power) FROM GP1 WHere (dc_power > 0) GROUP By source_key;

-- Consultar el promedio de generación DC por cada inversor durante todas las horas del año
SELECT AVG(dc_power) FROM GP1 GROUP By source_key;

-- Conteo de las horas de generación al año agrupadas por cada inversor
SELECT COUNT(*) FROM GP1 WHere (dc_power > 0) GROUP By source_key;

-- Obtener la cantidad de inversores en la plantaGP1
SELECT COUNT (DISTINCT source_key) FROM GP1;

-- Obtener el máximo de generación en el año por cada inversorGP1
SELECT MAX(dc_power) FROM GP1 GROUP By source_key;

-- Obtener el mínimo de generación en el año por cada inversorGP1
SELECT MIN(dc_power) FROM GP1 GROUP By source_key;

-- Consultar el promedio de temperatura ambiente
SELECT AVG(ambient_temperature) FROM CP1;

-- Consultar el máximo de temperatura ambiente
SELECT MAX(ambient_temperature) FROM CP1;

-- Consultar el promedio de temperatura del módulo
SELECT AVG(module_temperature) FROM CP1;

-- Consultar el máximo de temperatura del modulo
SELECT MAX(module_temperature) FROM CP1;

-- Consultar el promedio de radiación anual
SELECT AVG(irradiation) FROM CP1;

-- Consultar el máximo de irradiación anual
SELECT MAX(irradiation) FROM CP1;