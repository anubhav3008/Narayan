CREATE TABLE user (
    id int NOT NULL AUTO_INCREMENT,
    first_name varchar(255) NOT NULL,
    middle_name  varchar(255),
    lastName varchar(255),
    date_of_birth date,
    email varchar(50),
    username varchar(30),
    password varchar (255),
    incorrect_attempts int,
    status boolean default 1,
    PRIMARY KEY (ID)
);
create unique index userNameIdx on user(username);

create table closed_group(
id int not null auto_increment,
name varchar(50),
prize varchar(50),
prize_desc varchar(255),
start_date date,
amount_collected int,
primary key(id)
);

create table membership(
userid int not null,
closed_group_id int not null,
foreign key(userid) references user(id),
foreign key(closed_group_id) references closed_group(id)
);
create index userIdx on membership(userid);
create index groupIdx on membership(closed_group_id);
