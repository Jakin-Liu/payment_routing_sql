CREATE TABLE IF NOT EXISTS `routing_rule_target_psp` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `rule_id` BIGINT UNSIGNED NOT NULL COMMENT '路由规则ID',
  `psp` VARCHAR(50) NOT NULL COMMENT 'PSP',
  `weight` DOUBLE NULL COMMENT '权重（用于加权随机）',
  `priority` DOUBLE NULL COMMENT '优先级（用于优先级列表，数字越小优先级越高）',
  `status` TINYINT NOT NULL DEFAULT 1 COMMENT '状态',
  `is_deleted` TINYINT NOT NULL DEFAULT 0 COMMENT '是否删除',
  `created_at` INT NOT NULL COMMENT '创建时间戳',
  `updated_at` INT NOT NULL COMMENT '更新时间戳',
  PRIMARY KEY (`id`),
  KEY `idx_rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='路由规则目标PSP表';