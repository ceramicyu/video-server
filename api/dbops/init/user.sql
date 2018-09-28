CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` char(20) NOT NULL DEFAULT '' COMMENT '账号',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否锁定',
  `accesstype` int(11) NOT NULL DEFAULT '1' COMMENT '管理员权限',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `login_ip` bigint(12) NOT NULL DEFAULT '0',
  `last_ip` int(11) NOT NULL DEFAULT '0' COMMENT '上次登录的ip',
  `lock_ip` varchar(255) NOT NULL DEFAULT '' COMMENT '登录锁定ip',
  `lock_time` int(11) NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `lock_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '登录锁',
  `login_time` int(11) NOT NULL DEFAULT '0' COMMENT '登录时间',
  `last_time` int(11) NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `level` tinyint(2) NOT NULL DEFAULT '99' COMMENT '权值',
  `token` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `user`(`id`, `username`, `password`, `create_time`, `update_time`, `locked`, `accesstype`, `phone`, `login_ip`, `last_ip`, `lock_ip`, `lock_time`, `lock_status`, `login_time`, `last_time`, `level`, `token`) VALUES (1, 'qweqwe', 'ecdbee68c6c3c30827abea1c43a5f23b', 1535710791, 1535710791, 1, 1, '', 2886795265, 2147483647, '3232243201', 1534233658, 0, 1535710791, 1535528380, 0, 'dc702ed41bef22d029cddcfaeaeba087');
