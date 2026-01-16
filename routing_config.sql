-- 创建路由配置表
CREATE TABLE IF NOT EXISTS `routing_config` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `routing_config_id` varchar(50) NOT NULL COMMENT '路由配置ID',
  `merchant_id` varchar(50) NOT NULL COMMENT '商户ID',
  `name` varchar(100) NOT NULL COMMENT '配置名称',
  `rule_type` varchar(50) NOT NULL COMMENT '规则类型: routing_selection, transaction_retry',
  `service_type` varchar(20) NOT NULL COMMENT '服务类型: payin, payout',
  `description` text DEFAULT NULL COMMENT '描述',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态：0-禁用，1-启用',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除：0-否，1-是',
  `created_at` int UNSIGNED NOT NULL COMMENT '创建时间戳',
  `updated_at` int UNSIGNED NOT NULL COMMENT '更新时间戳',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_routing_config_id` (`routing_config_id`),
  KEY `idx_merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='路由配置表';
