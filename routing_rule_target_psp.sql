-- 创建路由规则目标PSP表
CREATE TABLE IF NOT EXISTS `routing_rule_target_psp` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `rule_action_id` bigint NOT NULL COMMENT '路由规则动作ID',
  `psp` varchar(50) NOT NULL COMMENT 'PSP',
  `weight` double DEFAULT NULL COMMENT '权重（用于加权随机）',
  `priority` double DEFAULT NULL COMMENT '优先级（用于优先级列表，数字越小优先级越高）',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态：0-禁用，1-启用',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除：0-否，1-是',
  `created_at` int UNSIGNED NOT NULL COMMENT '创建时间戳',
  `updated_at` int UNSIGNED NOT NULL COMMENT '更新时间戳',
  PRIMARY KEY (`id`),
  KEY `idx_rule_action_id` (`rule_action_id`),
  KEY `idx_psp` (`psp`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='路由规则目标PSP表';
