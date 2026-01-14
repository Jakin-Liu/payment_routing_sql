-- 创建 order_payin_request_log 表
-- PayIn 支付渠道调用 HTTP Proxy 日志表
-- 用于记录向支付渠道发起 HTTP 请求的完整日志信息

CREATE TABLE IF NOT EXISTS `order_payin_request_log` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  
  -- 关联字段
  `payment_order_id` VARCHAR(128) DEFAULT NULL COMMENT '支付订单唯一标识，关联 order_payin_payment 表的 payment_order_id',
  `transaction_id` VARCHAR(128) DEFAULT NULL COMMENT '支付系统全局交易号，对内唯一标识一笔 pay-in 交易',
  `psp` VARCHAR(64) DEFAULT NULL COMMENT '支付平台，例如: payermax, alipayplus, skypay 等',
  
  -- 请求信息
  `url` TEXT NOT NULL COMMENT '请求URL，完整的请求地址',
  `method` VARCHAR(16) NOT NULL DEFAULT 'POST' COMMENT 'HTTP 请求方法，GET, POST, PUT, DELETE 等',
  `headers` JSON DEFAULT NULL COMMENT 'HTTP 请求头信息，JSON 格式',
  `body` TEXT DEFAULT NULL COMMENT 'HTTP 请求体内容，可能是 JSON 字符串或文本',
  `params` JSON DEFAULT NULL COMMENT 'URL 查询参数，JSON 格式',
  
  -- 时间信息
  `request_at` BIGINT NOT NULL DEFAULT 0 COMMENT '发起请求的时间戳（毫秒）',
  `response_at` BIGINT NOT NULL DEFAULT 0 COMMENT '收到响应的时间戳（毫秒）',
  `duration` INT NOT NULL DEFAULT 0 COMMENT '请求耗时（毫秒）',
  
  -- 响应信息
  `status` VARCHAR(16) DEFAULT NULL COMMENT 'HTTP 响应状态码，例如: Pending, Done, Failed',
  `response` JSON DEFAULT NULL COMMENT 'HTTP 响应体内容',
  
  -- 错误信息
  `error_message` TEXT DEFAULT NULL COMMENT '错误信息，如果请求失败，记录错误信息',
  `error_stack` TEXT DEFAULT NULL COMMENT '错误堆栈信息，如果请求失败，记录错误堆栈信息',
  
  -- 基础字段（来自 BaseEntity）
  `created_at` INT NOT NULL COMMENT '创建时间戳（秒）',
  `updated_at` INT NOT NULL COMMENT '更新时间戳（秒）',
  
  PRIMARY KEY (`id`),
  INDEX `idx_transaction_id` (`transaction_id`),
  INDEX `idx_payment_order_id` (`payment_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='PayIn 支付渠道调用 HTTP Proxy 日志表';

