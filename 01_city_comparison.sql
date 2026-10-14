-- Динамика цен на новостройки в Казахстане (2001-2025)
SELECT period, value
FROM new_price
WHERE region = 'KZ'
ORDER BY period;

-- Сравнение городов по цене новостроек в 2025 году
SELECT region, value
FROM new_price
WHERE period = 2025 AND region != 'KZ'
ORDER BY value DESC;

-- Сравнение городов по цене вторичного жилья в 2025 году
SELECT region, value
FROM resale_price
WHERE period = 2025 AND region != 'KZ'
ORDER BY value DESC;

-- Сравнение городов по цене аренды в 2025 году
SELECT region, value
FROM rent_price
WHERE period = 2025 AND region != 'KZ'
ORDER BY value DESC;