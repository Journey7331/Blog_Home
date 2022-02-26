create table t_blogtype
(
    id       int auto_increment
        primary key,
    typeName varchar(30) null,
    orderNo  int         null
)
    charset = utf8;

INSERT INTO myblog.t_blogtype (id, typeName, orderNo) VALUES (3, 'Tomcat', 3);
INSERT INTO myblog.t_blogtype (id, typeName, orderNo) VALUES (16, 'spring', 2);
INSERT INTO myblog.t_blogtype (id, typeName, orderNo) VALUES (17, 'mybatis', 10);
INSERT INTO myblog.t_blogtype (id, typeName, orderNo) VALUES (20, 'mysql', 2);