create table t_link
(
    id       int auto_increment
        primary key,
    linkName varchar(100) null,
    linkUrl  varchar(200) null,
    orderNo  int          null
)
    charset = utf8;

INSERT INTO myblog.t_link (id, linkName, linkUrl, orderNo) VALUES (3, 'Iconfont_Icons', 'https://www.iconfont.cn/', 3);
INSERT INTO myblog.t_link (id, linkName, linkUrl, orderNo) VALUES (4, 'CSDN', 'https://www.csdn.net/', 2);
INSERT INTO myblog.t_link (id, linkName, linkUrl, orderNo) VALUES (6, 'baidu.com', 'https://www.baidu.com', 1);
INSERT INTO myblog.t_link (id, linkName, linkUrl, orderNo) VALUES (7, 'CSDN2', 'https://www.csdn.net/', 5);