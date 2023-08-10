-- -- Write your scripts here
 
--     -- 4.1.  Provide the Required information

-- Database Fundamentals, Assignment Part D
-- John McKeon (Email : john.n.mckeon@student.uts.edu.au) (Student ID : 13939917)
-- Vivian Wu (Email : vivian.wu-1@student.uts.edu.au) (Student ID : 14186732)
-- Maria Asif (Email : maria.asif@student.uts.edu.au) (Student ID : 13972841)
-- Script Name: YourdbName.SQL --Group 168--
-- Purpose: Builds PostgreSQL tables for the Steam database
-- Date: 14/11/2021
-- URL Related to this project https://store.steampowered.com/ 
-- */
 
 
    -- 4.2. Drop Each Table
 
DROP TABLE IF EXISTS USER_T;
DROP TABLE IF EXISTS DATE_OWNED_T;
DROP TABLE IF EXISTS PRODUCT_T;
 
 
    -- 4.3. Create Each Table
 
CREATE TABLE USER_T
(   USER_NAME varchar(50),
    USER_FIRST_NAME varchar(50),
    USER_LAST_NAME varchar(50),
    USER_EMAIL_ADDRESS varchar(60),
    USER_PASSWORD varchar(50),
    USER_COUNTRY varchar(50),
    USER_PHONE_NUMBER varchar(50),
CONSTRAINT USER_T_PK PRIMARY KEY (USER_NAME)
);
 
CREATE TABLE PRODUCT_T
(   PRODUCT_NAME varchar(60),
    PRODUCT_DESCRIPTION varchar(500),
    PRODUCT_DEVELOPER_NAME varchar(60),
    PRODUCT_FRANCHISE_NAME varchar(60),
    PRODUCT_PUBLISHER_NAME varchar(60),
CONSTRAINT PRODUCT_T_PK PRIMARY KEY (PRODUCT_NAME)
);
 
CREATE TABLE DATE_OWNED_T
(   DATE_DAY varchar(2),
    DATE_MONTH varchar(2),
    DATE_YEAR varchar(4),
    USER_NAME varchar(50),
    PRODUCT_NAME varchar(60),
CONSTRAINT DATE_OWNED_T_PK PRIMARY KEY (DATE_DAY, DATE_MONTH, DATE_YEAR, USER_NAME, PRODUCT_NAME),
CONSTRAINT DATE_OWNED_T_FK1 FOREIGN KEY (USER_NAME) REFERENCES USER_T,
CONSTRAINT DATE_OWNED_T_FK2 FOREIGN KEY (PRODUCT_NAME) REFERENCES PRODUCT_T
);
 
 
    -- 4.4. Insert Data in Each Table
 
INSERT INTO USER_T VALUES ('Rafe', 'John', 'McKeon', 'john.mckeon624@gmail.com', 'password', 'Australia', '+61 401 574 483');
-- https://steamcommunity.com/id/RafeHusky
INSERT INTO USER_T VALUES ('Kazolzen', 'Daniel', 'Swann', 'daniel.swann827@gmail.com', '123456', 'New Zealand', '+64 8532 85402');
-- https://steamcommunity.com/id/Kazolzen
INSERT INTO USER_T VALUES ('Broiz', 'James', 'Freeze', 'james.freeze954@gmail.com', 'qwerty', 'Australia', '+61 482 910 383');
-- https://steamcommunity.com/id/broiz
INSERT INTO USER_T VALUES ('Beyblades in a Wok', 'Tom', 'Bugunn', 'tom.bugunn129@hotmail.com', 'dragon', 'Australia', '+61 402 893 991');
-- https://steamcommunity.com/id/axismech
INSERT INTO USER_T VALUES ('TybaDeer', 'William', 'Gordon', 'william.gordon012@gmail.com', 'baseball', 'Australia', '+61 423 728 112');
-- https://steamcommunity.com/profiles/76561198040982165
 
INSERT INTO PRODUCT_T (PRODUCT_NAME,PRODUCT_DESCRIPTION,PRODUCT_DEVELOPER_NAME,PRODUCT_PUBLISHER_NAME) VALUES ('Celeste', 'Help Madeline survive her inner demons on her journey to the top of Celeste Mountain, in this super-tight platformer from the creators of TowerFall. Brave hundreds of hand-crafted challenges, uncover devious secrets, and piece together the mystery of the mountain.', 'Extremely OK Games, Ltd.', 'Matt Makes Games Inc.');
-- https://store.steampowered.com/app/504230/Celeste/
INSERT INTO PRODUCT_T VALUES ('Unpacking', 'Unpacking is a zen puzzle game about the familiar experience of pulling possessions out of boxes and fitting them into a new home. Part block-fitting puzzle, part home decoration, you are invited to create a satisfying living space while learning clues about the life you’re unpacking.', 'Witch Beam', 'Humble Games', 'Humble Games');
-- https://store.steampowered.com/app/1135690/Unpacking/
INSERT INTO PRODUCT_T (PRODUCT_NAME,PRODUCT_DESCRIPTION,PRODUCT_DEVELOPER_NAME,PRODUCT_PUBLISHER_NAME) VALUES ('Risk of Rain 2', 'Escape a chaotic alien planet by fighting through hordes of frenzied monsters – with your friends, or on your own. Combine loot in surprising ways and master each character until you become the havoc you feared upon your first crash landing.', 'Hopoo Games', 'Gearbox Publishing');
-- https://store.steampowered.com/app/632360/Risk_of_Rain_2/
INSERT INTO PRODUCT_T VALUES ('Half-Life', 'Named Game of the Year by over 50 publications, Valve’s debut title blends action and adventure with award-winning technology to create a frighteningly realistic world where players must think to survive. Also includes an exciting multiplayer mode that allows you to play against friends and enemies around the world.', 'Valve', 'Half-Life', 'Valve');
-- https://store.steampowered.com/app/70/HalfLife/
INSERT INTO PRODUCT_T VALUES ('Outer Wilds', 'Named Game of the Year 2019 by Giant Bomb, Polygon, Eurogamer, and The Guardian, Outer Wilds is a critically-acclaimed and award-winning open world mystery about a solar system trapped in an endless time loop.', 'Mobius Digital', 'Annapurna Interactive', 'Annapurna Interactive');
-- https://store.steampowered.com/app/753640/Outer_Wilds/
 
INSERT INTO DATE_OWNED_T VALUES ('14', '08', '2020', 'Rafe', 'Risk of Rain 2');
INSERT INTO DATE_OWNED_T VALUES ('03', '04', '2021', 'Rafe', 'Half-Life');
INSERT INTO DATE_OWNED_T VALUES ('21', '09', '2015', 'Broiz', 'Half-Life');
INSERT INTO DATE_OWNED_T VALUES ('02', '06', '2020', 'TybaDeer', 'Celeste');
INSERT INTO DATE_OWNED_T VALUES ('24', '03', '2021', 'TybaDeer', 'Risk of Rain 2');
INSERT INTO DATE_OWNED_T VALUES ('02', '06', '2020', 'TybaDeer', 'Outer Wilds');
INSERT INTO DATE_OWNED_T VALUES ('25', '12', '2007', 'Beyblades in a Wok', 'Half-Life');
INSERT INTO DATE_OWNED_T VALUES ('09', '11', '2021', 'Kazolzen', 'Unpacking');
 
 
    -- 4.5. Show the Inserted Data using Select * Statement
        -- 4.5.a: Question: Get all the information of all users' information (ie user name, first and last names, email address, password, country and phone number) and displays all this in a nice little table
        -- 4.5.a: SELECT statement:
 
SELECT * FROM USER_T;
 
 
        -- 4.5.b: Question: Get all the information of all the products,
        -- 4.5.b: SELECT statement:
 
SELECT * FROM PRODUCT_T;
 
 
        -- 4.5.c: Question: Get all the information of when a user owned a game, that user's username, and that product's name, and organises it in a nice little table
        -- 4.5.c: SELECT statement:
 
SELECT * FROM DATE_OWNED_T;
 
 
    -- 4.6. Provide the Queries Using “Group by” “Inner Join” and “Sub Query”
        -- 4.6.a Question: Select all the users' user names if they are equal to 'Rafe', 'Kazolzen', or 'TybaDeer', the product these users own, and the country these users are from, and then groups them by their different countries, and orders the countries alphabetically
        -- 4.6.a SELECT statement using GROUP BY and HAVING: 
 
SELECT DATE_OWNED_T.USER_NAME, DATE_OWNED_T.PRODUCT_NAME, USER_T.USER_COUNTRY FROM DATE_OWNED_T INNER JOIN USER_T
ON DATE_OWNED_T.USER_NAME = USER_T.USER_NAME
GROUP BY DATE_OWNED_T.USER_NAME, DATE_OWNED_T.PRODUCT_NAME, USER_T.USER_COUNTRY
HAVING DATE_OWNED_T.USER_NAME = 'Rafe' OR DATE_OWNED_T.USER_NAME = 'Kazolzen' OR DATE_OWNED_T.USER_NAME = 'TybaDeer'
ORDER BY USER_T.USER_COUNTRY;
 
 
        -- 4.6.b Question: Select all the User's user names, the product they own, and their email address if their email ends in @gmail.com (ie they use a gmail email account)
        -- 4.6.b SELECT statement using an INNER JOIN:
 
SELECT DATE_OWNED_T.USER_NAME, DATE_OWNED_T.PRODUCT_NAME, USER_T.USER_EMAIL_ADDRESS FROM DATE_OWNED_T INNER JOIN USER_T
ON DATE_OWNED_T.USER_NAME = USER_T.USER_NAME
WHERE USER_EMAIL_ADDRESS LIKE '%@gmail.com';
 
 
        -- 4.6.c Question: Select the users' user names if their country is the same as country as the user 'Rafe'
        -- 4.6.c SELECT statement using a SUBQUERY
 
SELECT USER_NAME FROM USER_T 
WHERE USER_COUNTRY = (SELECT USER_COUNTRY FROM USER_T WHERE USER_NAME = 'Rafe');