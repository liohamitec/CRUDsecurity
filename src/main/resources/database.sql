create table users (
  id       INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username varchar(255) NOT NULL,
  password varchar(255) NOT NULL
) engine = InnoDB;

create table roles (
  id   int          not null auto_increment primary key,
  name varchar(100) not null
) engine = InnoDB;

create table user_roles (
  user_id int not null,
  role_id int not null,

  foreign key (user_id) references users(id),
  foreign key (role_id) references roles(id),
  unique (user_id, role_id)
) engine = InnoDB;

create table developers (
  id INT AUTO_INCREMENT,
  name varchar(255) not null unique,
  age int,
  salary int NOT NULL,
  primary key (id)
) engine = InnoDB;

CREATE TABLE skills (
  id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL, 
  PRIMARY KEY (id)
) engine = InnoDB;

CREATE TABLE developers_skills (
  id INT AUTO_INCREMENT,
  developers_id INT NOT NULL,
  skills_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (developers_id) REFERENCES developers(id),
  FOREIGN KEY (skills_id) REFERENCES skills(id)
) engine = InnoDB;

---POPULATING---

insert into developers(name,age,salary) 
values ('Ivan Ivanov', 30,5000),
      ('Petr Petrov', 22,4000),
      ('Kim Chi', 36,3000),
      ('Doug Lee', 42,10000);

INSERT INTO skills(name)
VALUES  ('Java'),
      ('js'),
      ('C++'),
      ('Pyton'),
      ('PHP');

INSERT INTO developers_skills(developers_id,skills_id)
VALUES  (1,3),
    (1,4),
    (3,2),
    (2,1),
    (4,1),
    (4,2),
    (4,3);