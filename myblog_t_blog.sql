create table t_blog
(
    id          int auto_increment
        primary key,
    title       varchar(200) null,
    summary     varchar(400) null,
    releaseDate datetime     null,
    clickHit    int          null,
    replyHit    int          null,
    content     text         null,
    typeId      int          null,
    keyWord     varchar(200) null
)
    charset = utf8;

create index typeId
    on t_blog (typeId);

INSERT INTO myblog.t_blog (id, title, summary, releaseDate, clickHit, replyHit, content, typeId, keyWord) VALUES (72, 'mysql修改用户密码的方法及命令', '方法1： 用SET PASSWORD命令 首先登录MySQL。 格式：mysql> set password for 用户名@localhost = password(''新密码''); 例子：mysql> set password for root@localhost = password(''123''); 方法', '2021-05-07 21:44:52', 3, 0, '<p style="white-space: normal;"><strong>方法1： 用SET PASSWORD命令&nbsp;</strong><br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>首先登录MySQL。&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>格式：mysql&gt; set password for 用户名@localhost = password(&#39;新密码&#39;);&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>例子：mysql&gt; set password for root@localhost = password(&#39;123&#39;);&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/><br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/><strong>方法2：用mysqladmin&nbsp;</strong><br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>格式：mysqladmin -u用户名 -p旧密码 password 新密码&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>例子：mysqladmin -uroot -p123456 password 123&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/><br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/><strong>方法3：用UPDATE直接编辑user表&nbsp;</strong><br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>首先登录MySQL。&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>mysql&gt; use mysql;&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>mysql&gt; update user set password=password(&#39;123&#39;) where user=&#39;root&#39; and host=&#39;localhost&#39;;&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>mysql&gt; flush privileges;&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/><br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/><strong>方法4：在忘记root密码的时候，可以这样&nbsp;</strong><br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>以windows为例：&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>1. 关闭正在运行的MySQL服务。&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>2. 打开DOS窗口，转到mysql\\bin目录。&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>3. 输入mysqld --skip-grant-tables 回车。--skip-grant-tables 的意思是启动MySQL服务的时候跳过权限表认证。&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>4. 再开一个DOS窗口（因为刚才那个DOS窗口已经不能动了），转到mysql\\bin目录。&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>5. 输入mysql回车，如果成功，将出现MySQL提示符 &gt;。&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>6. 连接权限数据库： use mysql; 。&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>6. 改密码：update user set password=password(&quot;123&quot;) where user=&quot;root&quot;;（别忘了最后加分号） 。&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>7. 刷新权限（必须步骤）：flush privileges;　。&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>8. 退出 quit。&nbsp;<br style="margin: 0px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; background-color: rgb(245, 250, 254);"/>9. 注销系统，再进入，使用用户名root和刚才设置的新密码123登录。</p><p style="white-space: normal;"><br/></p><p style="white-space: normal;">原文链接：https://www.cnblogs.com/mmx8861/p/9062363.html</p><p><br/></p>', 20, 'mysql');
INSERT INTO myblog.t_blog (id, title, summary, releaseDate, clickHit, replyHit, content, typeId, keyWord) VALUES (73, 'Tomcat安装、配置与使用', 'Tomcat简介Tomcat是JAVA领域最著名的开源Web容器，简单、易用，稳定性极好，可以作为个人学习所用，也可作为商业发布。Tomcat不仅提供Web容器的基本功能，还支持JAAS和JDNI绑定等。Tomcat安装1、登录tomcat官网，需要使用servlet3.1规范，所以必须下载Tomcat8.0', '2021-05-07 21:46:26', 8, 0, '<p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);"><strong>Tomcat简介</strong><br style="box-sizing: border-box;"/></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);">Tomcat是JAVA领域最著名的开源Web容器，简单、易用，稳定性极好，可以作为个人学习所用，也可作为商业发布。Tomcat不仅提供Web容器的基本功能，还支持JAAS和JDNI绑定等。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);"><strong>Tomcat安装</strong></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);">1、登录tomcat官网，需要使用servlet3.1规范，所以必须下载Tomcat8.0.x或更新版本的zip压缩包。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);">2、解压缩下载的压缩包。</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);">目录解释：</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);"><br style="box-sizing: border-box;"/></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);">bin: 启动关闭tomcat的命令路径</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);">conf: 配置</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);">lib: jar文件</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);">logs: 空路径，存放日志文件</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);">temp: 临时文件</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);">webapps：不熟web应用（web应用复制到该路径，自动部署）</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);">work: class文件</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);"><strong>Tomcat配置</strong></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);">JAVA_HOME=&gt;JDK安装路径</p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);"><br style="box-sizing: border-box;"/></p><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(253, 253, 253);">原文链接：<a href="https://blog.csdn.net/menglinjie/article/details/79479282" target="_blank" style="box-sizing: border-box; background-color: transparent; color: rgb(51, 122, 183); text-decoration-line: none;">https://blog.csdn.net/menglinjie/article/details/79479282</a></p><p><br/></p>', 3, 'Tomcat简介');
INSERT INTO myblog.t_blog (id, title, summary, releaseDate, clickHit, replyHit, content, typeId, keyWord) VALUES (74, 'foreach标签中 属性的含义', 'foreach的主要用在构建in条件中，它可以在SQL语句中进行迭代一个集合。foreach元素的属性主要有 item，index，collection，open，separator，close。item集合中每一个元素进行迭代时的别名，index表示在迭代过程中，每次迭代到的位置，open该语句以什么开始，', '2021-06-01 14:29:50', 9, 1, '<p><span style="box-sizing: border-box; outline: 0px; font-weight: 700; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; background-color: rgb(255, 255, 255);"><span style="box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; overflow-wrap: break-word; font-size: 14px;">foreach的主要用在构建in条件中，它可以在SQL语句中进行迭代一个集合。<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>foreach元素的属性主要有 item，index，collection，open，separator，close。<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>item集合中每一个元素进行迭代时的别名，<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>index表示在迭代过程中，每次迭代到的位置，<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>open该语句以什么开始，<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>separator在每次进行迭代之间以什么符号作为分隔 符，<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>close以什么结束，<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>在使用foreach的时候最关键的也是最容易出错的就是collection属性，<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>该属性是必须指定的，但是在不同情况 下，该属性的值是不一样的，</span></span></p><p><span style="box-sizing: border-box; outline: 0px; font-weight: 700; overflow-wrap: break-word; color: rgb(51, 51, 51); font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; background-color: rgb(255, 255, 255);"><span style="box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; overflow-wrap: break-word; font-size: 14px;"><br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>主要有一下3种情况：<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>1. &nbsp; &nbsp; 如果传入的是单参数且参数类型是一个List的时候，collection属性值为list<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>2. &nbsp; &nbsp; 如果传入的是单参数且参数类型是一个array数组的时候，collection的属性值为array<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>3. &nbsp; &nbsp; 如果传入的参数是多个的时候，我们就需要把它们封装成一个Map了</span></span></p>', 20, 'SQL');
INSERT INTO myblog.t_blog (id, title, summary, releaseDate, clickHit, replyHit, content, typeId, keyWord) VALUES (75, 'MyBatis中#{}和${}的区别详解', '  1、#将传入的数据当成一个字符串，会对自动传入的数据加一个双引号。例如    order by #id#,如果传入的值是111，那么解析成sql时的值变为order by "111",如果传入的值是id,在解析成sql为order by "id"    其实原sql语句通常写成 order by #{id', '2021-06-01 15:48:59', 9, 0, '<p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">&nbsp; 1、#将传入的数据当成一个字符串，会对自动传入的数据加一个双引号。例如</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">&nbsp;&nbsp;&nbsp; order by #id#,如果传入的值是111，那么解析成sql时的值变为order by &quot;111&quot;,如果传入的值是id,在解析成sql为order by &quot;id&quot;</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">&nbsp;&nbsp;&nbsp; 其实原sql语句通常写成 order by #{id} 与order by #id#的效果一样</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">&nbsp;&nbsp;&nbsp; 2、$将传入的数据直接显示在sql语句中。例如 order by ${id},如果传入的值是9则解析成sql语句为order by 9</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">&nbsp;&nbsp;&nbsp; 3、#方式能够很大程度上防止sql注入，而$无法防止sql的注入，</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $一般用于传入数据库对象，例如传入表名</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">&nbsp;&nbsp;&nbsp;&nbsp; 一般能用#就别用$</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">&nbsp;&nbsp;&nbsp; mybatis排序时使用order by动态参数时需要住哟，使用$而不是#</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">&nbsp;&nbsp;&nbsp; =================================</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">1. #将传入的数据都当成一个字符串，会对自动传入的数据加一个双引号。如：order by #user_id#，如果传入的值是111,那么解析成sql时的值为order by &quot;111&quot;, 如果传入的值是id，则解析成的sql为order by &quot;id&quot;.</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">2. $将传入的数据直接显示生成在sql中。如：order by $user_id$，如果传入的值是111,那么解析成sql时的值为order by user_id, 如果传入的值是id，则解析成的sql为order by id.</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">3. #方式能够很大程度防止sql注入。</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">4.$方式无法防止Sql注入。</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">5.$方式一般用于传入数据库对象，例如传入表名.</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">6.一般能用#的就别用$.</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">MyBatis排序时使用order by 动态参数时需要注意，用$而不是#</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">字符串替换</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">默认情况下，使用#{}格式的语法会导致MyBatis创建预处理语句属性并以它为背景设置安全的值（比如?）。这样做很安全，很迅速也是首选做法，有时你只是想直接在SQL语句中插入一个不改变的字符串。比如，像ORDER BY，你可以这样来使用：<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>ORDER BY ${columnName}</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">这里MyBatis不会修改或转义字符串。</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">重要：接受从用户输出的内容并提供给语句中不变的字符串，这样做是不安全的。这会导致潜在的SQL注入攻击，因此你不应该允许用户输入这些字段，或者通常自行转义并检查。</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">mybatis本身的说明：</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">&nbsp;&nbsp;&nbsp; String Substitution<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>&nbsp;&nbsp;&nbsp; By default, using the #{} syntax will cause MyBatis to generate PreparedStatement properties and set the values safely against the PreparedStatement parameters (e.g. ?). While this is safer, faster and almost always preferred, sometimes you just want to directly inject a string unmodified into the SQL Statement. For example, for ORDER BY, you might use something like this:<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>&nbsp;&nbsp;&nbsp; ORDER BY ${columnName}<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>&nbsp;&nbsp;&nbsp; Here MyBatis won&#39;t modify or escape the string.<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>&nbsp;&nbsp;&nbsp; NOTE It&#39;s not safe to accept input from a user and supply it to a statement unmodified in this way. This leads to potential SQL Injection attacks and therefore you should either disallow user input in these fields, or always perform your own escapes and checks.</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">&nbsp;</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;"><br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>1. 使用#{}格式的语法在mybatis中使用Preparement语句来安全的设置值，执行sql类似下面的：<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>&nbsp;&nbsp;&nbsp; PreparedStatement ps = conn.prepareStatement(sql);<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>&nbsp;&nbsp;&nbsp; ps.setInt(1,id);</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;"><br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>这样做的好处是：更安全，更迅速，通常也是首选做法。</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">2. 不过有时你只是想直接在 SQL 语句中插入一个不改变的字符串。比如，像 ORDER BY，你可以这样来使用：<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>&nbsp;&nbsp;&nbsp; ORDER BY ${columnName}</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;"><br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>此时MyBatis 不会修改或转义字符串。</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">这种方式类似于：</p><p style="box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; color: rgb(77, 77, 77); overflow: auto hidden; overflow-wrap: break-word; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255); line-height: 26px !important;">&nbsp;&nbsp;&nbsp; Statement st = conn.createStatement();<br style="box-sizing: border-box; outline: 0px; overflow-wrap: break-word;"/>&nbsp;&nbsp;&nbsp; ResultSet rs = st.executeQuery(sql);</p><p><br/></p><p>原文链接：https://blog.csdn.net/luman1991/article/details/52623184</p>', 17, 'mybatis');
INSERT INTO myblog.t_blog (id, title, summary, releaseDate, clickHit, replyHit, content, typeId, keyWord) VALUES (76, '【清凉一夏】夏季防暑降温小常识', 'jsdfghjkl;', '2021-06-08 14:59:20', 3, 1, '<p>jsdfghjkl;<br/></p>', 3, '降暑');