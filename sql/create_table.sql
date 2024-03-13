-- 创建库
create database if not exists added;

-- 切换库
use added;

-- auto-generated definition
create table user
(
    id           bigint auto_increment comment '登录ID'
        primary key,
    username     varchar(256)                       null comment '昵称',
    userAccount  varchar(256)                       null comment '账号',
    avatarUrl    varchar(256)                       null comment '头像',
    gender       tinyint                            null comment '性别',
    userRole     tinyint  default 0                 null comment '用户角色 0-普通用户 1-管理员',
    userPassword varchar(512)                       not null comment '密码',
    phone        varchar(128)                       null comment '电话',
    email        varchar(512)                       null comment '邮箱',
    userStatus   int      default 0                 null comment '状态',
    createTime   datetime default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime   datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete     tinyint  default 0                 null comment '是否删除',
    planetCode   varchar(512)                       null comment '星球编号'
)
    comment '用户';

# 导入示例用户
INSERT INTO added.user (username, userAccount, avatarUrl, gender, userPassword, phone, email, userStatus, createTime, updateTime, isDelete, userRole, planetCode) VALUES ('ADDED', 'added', 'https://www.added.icu/wp-content/uploads/2024/01/猫猫.png', null, 'c9a3a31a0f991da233daf64c073680c9', null, null, 0, '2024-03-13 12:36:22', '2024-03-13 12:36:22', 0, 1, '1');

