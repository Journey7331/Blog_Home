create table tb_admin_user
(
    admin_user_id   int auto_increment comment '管理员id'
        primary key,
    login_user_name varchar(50)       not null comment '管理员登陆名称',
    login_password  varchar(50)       not null comment '管理员登陆密码',
    nick_name       varchar(50)       not null comment '管理员显示昵称',
    locked          tinyint default 0 null comment '是否锁定 0未锁定 1已锁定无法登陆'
)
    charset = utf8;

INSERT INTO myblog.tb_admin_user (admin_user_id, login_user_name, login_password, nick_name, locked) VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '大BOSS', 0);