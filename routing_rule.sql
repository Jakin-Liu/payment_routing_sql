CREATE TABLE IF NOT EXISTS `routing_rule` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `routing_config_id` VARCHAR(255) NOT NULL COMMENT '路由配置ID',
  `priority` INT NOT NULL COMMENT '优先级',
  `status` TINYINT NOT NULL DEFAULT 1 COMMENT '状态',
  `is_deleted` TINYINT NOT NULL DEFAULT 0 COMMENT '是否删除',
  `payment_brands` JSON NULL COMMENT '支付品牌',
  `countries` JSON NULL COMMENT '国家',
  `currencies` JSON NULL COMMENT '货币',
  `action_type` varchar(20) NULL COMMENT '动作类型',
  `created_at` INT NOT NULL COMMENT '创建时间戳',
  `updated_at` INT NOT NULL COMMENT '更新时间戳',
  PRIMARY KEY (`id`),
  KEY `idx_routing_config_id` (`routing_config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='路由规则表';