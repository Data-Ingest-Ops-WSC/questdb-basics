-- Get data
SELECT * FROM trades;

-- Mean by symbol
SELECT symbol, avg(price)
FROM trades
SAMPLE BY 10s;

-- Total volume by asset
SELECT symbol, sum(volume)
FROM trades
GROUP BY symbol;
