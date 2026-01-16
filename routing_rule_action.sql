
-- 创建路由规则动作表
CREATE TABLE IF NOT EXISTS `routing_rule_action` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `rule_id` bigint NOT NULL COMMENT '路由规则ID',
  `action_type` enum('weight','priority') NOT NULL COMMENT '动作类型: weight-加权随机, priority-优先级列表',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除：0-否，1-是',
  `created_at` int UNSIGNED NOT NULL COMMENT '创建时间戳',
  `updated_at` int UNSIGNED NOT NULL COMMENT '更新时间戳',
  PRIMARY KEY (`id`),
  KEY `idx_rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='路由规则动作表';