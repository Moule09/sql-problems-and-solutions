Problem Statement : Find the total sum of CASH and ONLINE Payment for each merchant

Tables : 
  
CREATE TABLE payments_data (
    trx_date DATE,
    merchant VARCHAR(50),
    amount INT,
    payment_mode VARCHAR(20)
);

INSERT INTO payments_data (trx_date, merchant, amount, payment_mode)
VALUES
('2022-04-01', 'merchant_1', 150, 'CASH'),
('2022-04-01', 'merchant_1', 500, 'ONLINE'),
('2022-04-02', 'merchant_2', 450, 'ONLINE'),
('2022-04-03', 'merchant_1', 100, 'CASH'),
('2022-04-04', 'merchant_3', 100, 'CASH'),
('2022-04-04', 'merchant_5', 200, 'ONLINE'),
('2022-04-05', 'merchant_2', 100, 'ONLINE');

Solution : 
  
SELECT 
    merchant, 
    SUM(CASE WHEN payment_mode = 'CASH' THEN amount ELSE 0 END)   AS cash_amount,
    SUM(CASE WHEN payment_mode = 'ONLINE' THEN amount ELSE 0 END) AS online_amount
FROM 
    payments_data
GROUP BY 
    merchant;


Ref : https://www.youtube.com/watch?v=odTg-nGIfwE&list=PLYUFWNUuw0fm89ZIcYHhNRTsB7RJzM1tX&index=3
