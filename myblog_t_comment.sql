create table t_comment
(
    id          int auto_increment
        primary key,
    userIp      varchar(50)   null,
    blogId      int           null,
    content     varchar(1000) null,
    commentDate datetime      null,
    state       int           null
)
    charset = utf8;

INSERT INTO myblog.t_comment (id, userIp, blogId, content, commentDate, state) VALUES (342, '0:0:0:0:0:0:0:1', 74, 'helloooooo！！！', '2021-06-07 12:00:49', 0);
INSERT INTO myblog.t_comment (id, userIp, blogId, content, commentDate, state) VALUES (343, '0:0:0:0:0:0:0:1', 76, '123456', '2021-06-08 14:59:45', 1);