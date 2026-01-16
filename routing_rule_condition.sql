-- 创建路由规则条件表
CREATE TABLE IF NOT EXISTS `routing_rule_condition` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `rule_id` bigint NOT NULL COMMENT '路由规则ID',
  `condition_type` enum('payment_brand','country','currency') NOT NULL COMMENT '条件类型: payment_brand-支付品牌, country-国家, currency-货币',
  `condition_value` varchar(100) NOT NULL COMMENT '条件值',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态：0-禁用，1-启用',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除：0-否，1-是',
  `created_at` int UNSIGNED NOT NULL COMMENT '创建时间戳',
  `updated_at` int UNSIGNED NOT NULL COMMENT '更新时间戳',
  PRIMARY KEY (`id`),
  KEY `idx_rule_id` (`rule_id`),
  KEY `idx_condition_type` (`condition_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='路由规则条件表';