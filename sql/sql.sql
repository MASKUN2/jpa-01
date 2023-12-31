-- 학습용 데이터베이스 ddl
CREATE DATABASE jpabegin CHARACTER SET UTF8MB4;

CREATE USER 'jpauser'@'localhost' IDENTIFIED BY 'jpapass';
CREATE USER 'jpauser'@'%' IDENTIFIED BY 'jpapass';

GRANT ALL PRIVILEGES ON jpabegin.* TO 'jpauser'@'localhost';
GRANT ALL PRIVILEGES ON jpabegin.* TO 'jpauser'@'%';

create table jpabegin.user (
                               email varchar(50) not null primary key,
                               name varchar(50),
                               create_date datetime
) engine innodb character set utf8mb4;