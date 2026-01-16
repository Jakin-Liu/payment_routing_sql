-- 创建路由规则表
CREATE TABLE IF NOT EXISTS `routing_rule` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `routing_config_id` varchar(50) NOT NULL COMMENT '路由配置ID',
  `priority` int NOT NULL COMMENT '优先级',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态：0-禁用，1-启用',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除：0-否，1-是',
  `created_at` int UNSIGNED NOT NULL COMMENT '创建时间戳',
  `updated_at` int UNSIGNED NOT NULL COMMENT '更新时间戳',
  PRIMARY KEY (`id`),
  KEY `idx_routing_config_id` (`routing_config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='路由规则表';