
ALTER TABLE order_payin MODIFY COLUMN real_amount DECIMAL(10, 2);

ALTER TABLE order_payin MODIFY COLUMN usd_amount DECIMAL(10, 2);

ALTER TABLE order_payin_payment MODIFY COLUMN real_amount DECIMAL(10, 2);