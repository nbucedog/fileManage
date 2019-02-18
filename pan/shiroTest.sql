#实体表
create table manager_info(
id int not null auto_increment primary key,
username varchar(40) not null,
name varchar(40) not null,
password varchar(40) not null,
salt varchar(40) not null,
state tinyint
)character set = utf8;

create table sys_permission(
id int not null auto_increment primary key,
permission varchar(40) not null
)character set = utf8;

create table sys_role(
id int not null auto_increment primary key,
role varchar(40) not null,
description varchar(40)
)character set = utf8;


#关系表
create table manager_role_relationship(
role_id int,
manager_id int
);
create table role_permission_relationship(
role_id int,
permission_id int
);

#连接1
alter table manager_role_relationship add constraint fk_role_id foreign key (role_id) references sys_role(id);
alter table manager_role_relationship add constraint fk_manager_id foreign key (manager_id) references manager_info(id);
#连接2
alter table role_permission_relationship add constraint fk2_role_id foreign key (role_id) references sys_role(id);
alter table role_permission_relationship add constraint fk2_permission_id foreign key (permission_id) references sys_permission(id);

#插入数据
#插入管理员
insert into manager_info (username,name,password,salt) values ('admin1','张三','admin1','qq123456');
#插入角色
insert into sys_role (role,description) values ('aix','aix的角色');
insert into sys_role (role,description) values ('view','只能观看的角色');
#插入权限
insert into sys_permission (permission) values ('permission:aix');
insert into sys_permission (permission) values ('permission:view');
#插入关联
insert into role_permission_relationship (role_id,permission_id) values (1,1);
insert into manager_role_relationship (role_id,manager_id) values (1,1);
