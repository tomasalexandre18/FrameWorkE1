DROP DATABASE IF EXISTS test;
CREATE DATABASE test;
USE test;

-- auto-generated definition
create table students
(
    id       int auto_increment
        primary key,
    surname  varchar(30)  not null,
    lastname varchar(30)  not null,
    age      int          not null,
    email    varchar(100) not null
);

INSERT INTO test.students (id, surname, lastname, age, email) VALUES (1, 'Alice', 'Durand', 21, 'alice.durand@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (2, 'Bob', 'Martin', 22, 'bob.martin@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (3, 'Clara', 'Petit', 20, 'clara.petit@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (4, 'David', 'Moreau', 23, 'david.moreau@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (5, 'Emma', 'Leroy', 19, 'emma.leroy@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (6, 'Lucas', 'Garcia', 24, 'lucas.garcia@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (7, 'Sophie', 'Lambert', 22, 'sophie.lambert@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (8, 'Léo', 'Faure', 21, 'leo.faure@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (9, 'Camille', 'Blanc', 20, 'camille.blanc@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (10, 'Nathan', 'Robert', 23, 'nathan.robert@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (11, 'Julie', 'Bertrand', 22, 'julie.bertrand@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (12, 'Thomas', 'Fernandez', 25, 'thomas.fernandez@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (13, 'Manon', 'Henry', 20, 'manon.henry@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (14, 'Arthur', 'Roux', 21, 'arthur.roux@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (15, 'Anaïs', 'Benoit', 19, 'anais.benoit@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (16, 'Mathis', 'Lopez', 22, 'mathis.lopez@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (17, 'Chloé', 'Guerin', 23, 'chloe.guerin@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (18, 'Hugo', 'Marchand', 24, 'hugo.marchand@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (19, 'Laura', 'Collet', 20, 'laura.collet@example.com');
INSERT INTO test.students (id, surname, lastname, age, email) VALUES (20, 'Quentin', 'Perrot', 21, 'quentin.perrot@example.com');



-- auto-generated definition
create table note
(
    id         int auto_increment
        primary key,
    student_id int         not null,
    note       int         not null,
    mat        varchar(30) not null,
    constraint note_ibfk_1
        foreign key (student_id) references students (id)
            on delete cascade,
    check (`note` >= 0 and `note` <= 20)
);

create index student_id
    on note (student_id);

INSERT INTO test.note (id, student_id, note, mat) VALUES (2, 1, 12, 'Physique');
INSERT INTO test.note (id, student_id, note, mat) VALUES (3, 2, 18, 'Anglais');
INSERT INTO test.note (id, student_id, note, mat) VALUES (4, 2, 16, 'Maths');
INSERT INTO test.note (id, student_id, note, mat) VALUES (5, 3, 14, 'Histoire');
INSERT INTO test.note (id, student_id, note, mat) VALUES (6, 3, 10, 'Géographie');
INSERT INTO test.note (id, student_id, note, mat) VALUES (7, 4, 9, 'SVT');
INSERT INTO test.note (id, student_id, note, mat) VALUES (8, 4, 13, 'Maths');
INSERT INTO test.note (id, student_id, note, mat) VALUES (9, 5, 17, 'Informatique');
INSERT INTO test.note (id, student_id, note, mat) VALUES (10, 5, 15, 'Maths');
INSERT INTO test.note (id, student_id, note, mat) VALUES (11, 6, 11, 'Français');
INSERT INTO test.note (id, student_id, note, mat) VALUES (12, 6, 8, 'Sport');
INSERT INTO test.note (id, student_id, note, mat) VALUES (13, 7, 19, 'Philo');
INSERT INTO test.note (id, student_id, note, mat) VALUES (14, 8, 14, 'Espagnol');
INSERT INTO test.note (id, student_id, note, mat) VALUES (15, 8, 16, 'Anglais');
INSERT INTO test.note (id, student_id, note, mat) VALUES (16, 9, 12, 'Chimie');
INSERT INTO test.note (id, student_id, note, mat) VALUES (17, 10, 7, 'Physique');
INSERT INTO test.note (id, student_id, note, mat) VALUES (18, 10, 13, 'Maths');
INSERT INTO test.note (id, student_id, note, mat) VALUES (19, 10, 10, 'SVT');
INSERT INTO test.note (id, student_id, note, mat) VALUES (21, 2, 18, 'test');
INSERT INTO test.note (id, student_id, note, mat) VALUES (22, 3, 12, 'test');
INSERT INTO test.note (id, student_id, note, mat) VALUES (23, 1, 12, 'Maths');

