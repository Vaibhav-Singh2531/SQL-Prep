WITH buy_sell AS (
    SELECT stock_name,
    SUM(CASE WHEN operation = 'Buy' THEN price ELSE 0 END) as buy_total,
    SUM(CASE WHEN operation = 'Sell' THEN price ELSE 0 END) as sell_total
    FROM Stocks s
    GROUP BY stock_name
)

SELECT stock_name,
       (sell_total - buy_total) capital_gain_loss
FROM buy_sell

