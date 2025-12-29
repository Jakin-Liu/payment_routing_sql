CREATE TABLE `order_payin_psp_webhook_log` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `payment_order_id` varchar(128) DEFAULT NULL COMMENT '支付订单唯一标识，关联 order_payin_payment 表的 payment_order_id',
  `psp` varchar(64) DEFAULT NULL COMMENT '支付平台，例如: payermax, stripe, paypal 等',
  `payload` json DEFAULT NULL COMMENT 'PSP 发送的原始 webhook 数据，JSON 格式',
  `notify_at` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'PSP 发送 webhook 的时间戳（秒）',
  `created_at` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间戳',
  `updated_at` int UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间戳（自动更新）',
  PRIMARY KEY (`id`),
  KEY `idx_payment_order_id` (`payment_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='PayIn PSP Webhook 日志表，用于记录 PSP 发送的 webhook 回调日志';

