CREATE TABLE IF NOT EXISTS `routing_config` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `routing_config_id` VARCHAR(255) NOT NULL COMMENT '路由配置ID',
  `merchant_id` VARCHAR(255) NOT NULL COMMENT '商户ID',
  `name` VARCHAR(100) NOT NULL COMMENT '配置名称',
  `rule_type` VARCHAR(50) NOT NULL COMMENT '规则类型',
  `service_type` VARCHAR(50) NOT NULL COMMENT '服务类型',
  `description` TEXT NULL COMMENT '描述',
  `status` TINYINT NOT NULL DEFAULT 1 COMMENT '状态：0-禁用，1-启用',
  `is_deleted` TINYINT NOT NULL DEFAULT 0 COMMENT '是否删除：0-否，1-是',
  `scope` VARCHAR(50) NOT NULL DEFAULT 'public' COMMENT '范围',
  `created_at` INT NOT NULL COMMENT '创建时间戳',
  `updated_at` INT NOT NULL COMMENT '更新时间戳',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_routing_config_id` (`routing_config_id`),
  KEY `idx_merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='路由配置表';
