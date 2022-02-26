create table t_blogger
(
    id        int auto_increment
        primary key,
    userName  varchar(50)  null,
    password  varchar(100) null,
    profile   text         null,
    nickName  varchar(50)  null,
    sign      varchar(100) null,
    imageName varchar(100) null
)
    charset = utf8;

INSERT INTO myblog.t_blogger (id, userName, password, profile, nickName, sign, imageName) VALUES (1, 'admin', '2a407ba9c2402885eae0a700cf3336b5', '<p style="white-space: normal; text-align: center;">Hey, It&#39;s me!!!!</p><p style="white-space: normal;"><br/></p><p style="white-space: normal; text-align: center;">在校（SSPU）大三学生</p><p style="white-space: normal;"><br/></p>', 'Hua', 'Here I am.', '20210608023327.jpg');