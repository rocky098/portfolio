CREATE DATABASE board;

\c board

CREATE TABLE posts (
    id SERIAL NOT NULL PRIMARY KEY ,
    name VARCHAR( 25 ) NOT NULL ,
    email VARCHAR( 35 ) NOT NULL ,
    content VARCHAR( 60 ) NOT NULL
);

\d

INSERT INTO posts (name, email, content)
VALUES ('kinjo', 'kinjo@mail.com','helloworld');

SELECT * FROM posts;