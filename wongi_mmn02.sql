-- ===============================================
-- MMAN 02 Test by Daniel Wong - www.wongi.io
-- ===============================================

-- ===============================================
-- SECTION 3: DATA INSERTION (PROVIDED)
-- ===============================================
set datestyle to 'ISO, DMY';

-- Clear existing data (in case of re-run)
delete from comment;
delete from likes;
delete from follow;
delete from post;
delete from users;

insert into users 
values(1, 'alice', 'alice@example.com', 'pass1', 'photographer', 'israel'),
      (2, 'bob', 'bob@example.com', 'pass2', 'traveler', 'usa'),
      (3, 'carol', 'carol@example.com', 'pass3', 'chef', 'italy'),
      (4, 'david', 'david@example.com', 'pass4', 'musician', 'israel'),
      (5, 'eve', 'eve@example.com', 'pass5', 'techie', 'canada'),
      (6, 'frank', 'frank@example.com', 'pass6', 'gamer', 'japan'),
      (7, 'grace', 'grace@example.com', 'pass7', 'reader', 'uk'),
      (8, 'hank', 'hank@example.com', 'pass8', 'blogger', 'france');

insert into post 
values(101, 1, 'sunset in tel aviv', 'sun.jpg', to_date('5/5/2025', 'DD/MM/YYYY'), '18:30:00'),
      (102, 2, 'hiking the rockies', 'rockies.jpg', to_date('20/4/2025', 'DD/MM/YYYY'), '10:00:00'),
      (103, 3, 'best pasta recipe', 'pasta.jpg', to_date('22/4/2025', 'DD/MM/YYYY'), '12:15:00'),
      (104, 4, 'new song release', 'song.jpg', to_date('1/5/2025', 'DD/MM/YYYY'), '15:45:00'),
      (105, 1, 'morning coffee', 'coffee.jpg', to_date('15/3/2025', 'DD/MM/YYYY'), '08:20:00'),
      (106, 5, 'tech trends 2025', 'tech.jpg', to_date('3/5/2025', 'DD/MM/YYYY'), '09:00:00'),
      (107, 6, 'gaming marathon', 'game.jpg', to_date('25/4/2025', 'DD/MM/YYYY'), '21:40:00'),
      (108, 2, 'cherry blossoms', 'sakura.jpg', to_date('4/5/2025', 'DD/MM/YYYY'), '07:50:00'),
      (109, 3, 'street food adventures', 'street.jpg', to_date('6/5/2025', 'DD/MM/YYYY'), '11:00:00'),
      (110, 4, 'guitar tutorial', 'guitar.jpg', to_date('18/2/2025', 'DD/MM/YYYY'), '17:10:00'),
      (111, 3, 'city tour', 'oldcity.jpg', to_date('1/3/2025', 'DD/MM/YYYY'), '10:00:00');

insert into comment 
values(101, to_date('5/5/2025', 'DD/MM/YYYY'), '19:00:00', 2, 'beautiful!'),
      (101, to_date('5/5/2025', 'DD/MM/YYYY'), '19:05:00', 3, 'love the colors.'),
      (102, to_date('21/4/2025', 'DD/MM/YYYY'), '14:00:00', 1, 'awesome hike!'),
      (102, to_date('22/4/2025', 'DD/MM/YYYY'), '16:00:00', 8, 'nice view.'),
      (103, to_date('22/4/2025', 'DD/MM/YYYY'), '13:00:00', 5, 'yummy!'),
      (104, to_date('2/5/2025', 'DD/MM/YYYY'), '10:15:00', 6, 'great beat!'),
      (106, to_date('3/5/2025', 'DD/MM/YYYY'), '11:30:00', 2, 'interesting insights.'),
      (107, to_date('26/4/2025', 'DD/MM/YYYY'), '22:00:00', 4, 'good luck!'),
      (108, to_date('4/5/2025', 'DD/MM/YYYY'), '08:10:00', 3, 'so pretty!'),
      (109, to_date('6/5/2025', 'DD/MM/YYYY'), '12:10:00', 5, 'delicious.'),
      (110, to_date('19/2/2025', 'DD/MM/YYYY'), '18:00:00', 1, 'helpful tutorial.');

insert into likes 
values(1, 101, to_date('5/5/2025', 'DD/MM/YYYY'), '21:00:00'),
      (1, 102, to_date('21/3/2025', 'DD/MM/YYYY'), '14:05:00'),
      (1, 103, to_date('22/4/2025', 'DD/MM/YYYY'), '14:10:00'),
      (1, 104, to_date('2/5/2025', 'DD/MM/YYYY'), '11:00:00'),
      (1, 105, to_date('15/3/2025', 'DD/MM/YYYY'), '09:05:00'),
      (1, 111, to_date('2/3/2025', 'DD/MM/YYYY'), '11:00:00'),
      (2, 101, to_date('5/5/2025', 'DD/MM/YYYY'), '18:50:00'),
      (2, 103, to_date('22/4/2025', 'DD/MM/YYYY'), '12:30:00'),
      (2, 105, to_date('15/3/2025', 'DD/MM/YYYY'), '09:00:00'),
      (2, 111, to_date('2/3/2025', 'DD/MM/YYYY'), '11:05:00');

insert into follow 
values(2, 1), (3, 1), (4, 1), (6, 1), (1, 2), (1, 3), (2, 3), (4, 2), (3, 4), (5, 4), (2, 6);

insert into comment values
(102, to_date('21/4/2025', 'DD/MM/YYYY'), '14:30:00', 3, 'amazing!'),
(102, to_date('21/4/2025', 'DD/MM/YYYY'), '14:45:00', 4, 'great photo!'),
(102, to_date('21/4/2025', 'DD/MM/YYYY'), '15:00:00', 5, 'wonderful!');

insert into likes values
(5, 106, to_date('3/5/2025', 'DD/MM/YYYY'), '12:00:00'),
(6, 107, to_date('25/4/2025', 'DD/MM/YYYY'), '23:00:00');

insert into follow values (4, 4);

insert into likes values
(4, 104, to_date('1/5/2025', 'DD/MM/YYYY'), '16:00:00'),
(4, 110, to_date('18/2/2025', 'DD/MM/YYYY'), '18:00:00');

insert into users values
(9, 'israel1', 'israel1@example.com', 'pass9', 'artist', 'israel'),
(10, 'israel2', 'israel2@example.com', 'pass10', 'writer', 'israel');

insert into follow values (7, 1), (7, 4), (7, 9);

-- ===============================================
-- SECTION 3: DATA INSERTION (PROVIDED)
-- ===============================================
set datestyle to 'ISO, DMY';

-- Clear existing data (in case of re-run)
delete from comment;
delete from likes;
delete from follow;
delete from post;
delete from users;

insert into users 
values(1, 'alice', 'alice@example.com', 'pass1', 'photographer', 'israel'),
      (2, 'bob', 'bob@example.com', 'pass2', 'traveler', 'usa'),
      (3, 'carol', 'carol@example.com', 'pass3', 'chef', 'italy'),
      (4, 'david', 'david@example.com', 'pass4', 'musician', 'israel'),
      (5, 'eve', 'eve@example.com', 'pass5', 'techie', 'canada'),
      (6, 'frank', 'frank@example.com', 'pass6', 'gamer', 'japan'),
      (7, 'grace', 'grace@example.com', 'pass7', 'reader', 'uk'),
      (8, 'hank', 'hank@example.com', 'pass8', 'blogger', 'france');

insert into post 
values(101, 1, 'sunset in tel aviv', 'sun.jpg', to_date('5/5/2025', 'DD/MM/YYYY'), '18:30:00'),
      (102, 2, 'hiking the rockies', 'rockies.jpg', to_date('20/4/2025', 'DD/MM/YYYY'), '10:00:00'),
      (103, 3, 'best pasta recipe', 'pasta.jpg', to_date('22/4/2025', 'DD/MM/YYYY'), '12:15:00'),
      (104, 4, 'new song release', 'song.jpg', to_date('1/5/2025', 'DD/MM/YYYY'), '15:45:00'),
      (105, 1, 'morning coffee', 'coffee.jpg', to_date('15/3/2025', 'DD/MM/YYYY'), '08:20:00'),
      (106, 5, 'tech trends 2025', 'tech.jpg', to_date('3/5/2025', 'DD/MM/YYYY'), '09:00:00'),
      (107, 6, 'gaming marathon', 'game.jpg', to_date('25/4/2025', 'DD/MM/YYYY'), '21:40:00'),
      (108, 2, 'cherry blossoms', 'sakura.jpg', to_date('4/5/2025', 'DD/MM/YYYY'), '07:50:00'),
      (109, 3, 'street food adventures', 'street.jpg', to_date('6/5/2025', 'DD/MM/YYYY'), '11:00:00'),
      (110, 4, 'guitar tutorial', 'guitar.jpg', to_date('18/2/2025', 'DD/MM/YYYY'), '17:10:00'),
      (111, 3, 'city tour', 'oldcity.jpg', to_date('1/3/2025', 'DD/MM/YYYY'), '10:00:00');

insert into comment 
values(101, to_date('5/5/2025', 'DD/MM/YYYY'), '19:00:00', 2, 'beautiful!'),
      (101, to_date('5/5/2025', 'DD/MM/YYYY'), '19:05:00', 3, 'love the colors.'),
      (102, to_date('21/4/2025', 'DD/MM/YYYY'), '14:00:00', 1, 'awesome hike!'),
      (102, to_date('22/4/2025', 'DD/MM/YYYY'), '16:00:00', 8, 'nice view.'),
      (103, to_date('22/4/2025', 'DD/MM/YYYY'), '13:00:00', 5, 'yummy!'),
      (104, to_date('2/5/2025', 'DD/MM/YYYY'), '10:15:00', 6, 'great beat!'),
      (106, to_date('3/5/2025', 'DD/MM/YYYY'), '11:30:00', 2, 'interesting insights.'),
      (107, to_date('26/4/2025', 'DD/MM/YYYY'), '22:00:00', 4, 'good luck!'),
      (108, to_date('4/5/2025', 'DD/MM/YYYY'), '08:10:00', 3, 'so pretty!'),
      (109, to_date('6/5/2025', 'DD/MM/YYYY'), '12:10:00', 5, 'delicious.'),
      (110, to_date('19/2/2025', 'DD/MM/YYYY'), '18:00:00', 1, 'helpful tutorial.');

insert into likes 
values(1, 101, to_date('5/5/2025', 'DD/MM/YYYY'), '21:00:00'),
      (1, 102, to_date('21/3/2025', 'DD/MM/YYYY'), '14:05:00'),
      (1, 103, to_date('22/4/2025', 'DD/MM/YYYY'), '14:10:00'),
      (1, 104, to_date('2/5/2025', 'DD/MM/YYYY'), '11:00:00'),
      (1, 105, to_date('15/3/2025', 'DD/MM/YYYY'), '09:05:00'),
      (1, 111, to_date('2/3/2025', 'DD/MM/YYYY'), '11:00:00'),
      (2, 101, to_date('5/5/2025', 'DD/MM/YYYY'), '18:50:00'),
      (2, 103, to_date('22/4/2025', 'DD/MM/YYYY'), '12:30:00'),
      (2, 105, to_date('15/3/2025', 'DD/MM/YYYY'), '09:00:00'),
      (2, 111, to_date('2/3/2025', 'DD/MM/YYYY'), '11:05:00');

insert into follow 
values(2, 1), (3, 1), (4, 1), (6, 1), (1, 2), (1, 3), (2, 3), (4, 2), (3, 4), (5, 4), (2, 6);

insert into comment values
(102, to_date('21/4/2025', 'DD/MM/YYYY'), '14:30:00', 3, 'amazing!'),
(102, to_date('21/4/2025', 'DD/MM/YYYY'), '14:45:00', 4, 'great photo!'),
(102, to_date('21/4/2025', 'DD/MM/YYYY'), '15:00:00', 5, 'wonderful!');

insert into likes values
(5, 106, to_date('3/5/2025', 'DD/MM/YYYY'), '12:00:00'),
(6, 107, to_date('25/4/2025', 'DD/MM/YYYY'), '23:00:00');

insert into follow values (4, 4);

insert into likes values
(4, 104, to_date('1/5/2025', 'DD/MM/YYYY'), '16:00:00'),
(4, 110, to_date('18/2/2025', 'DD/MM/YYYY'), '18:00:00');

insert into users values
(9, 'israel1', 'israel1@example.com', 'pass9', 'artist', 'israel'),
(10, 'israel2', 'israel2@example.com', 'pass10', 'writer', 'israel');

insert into follow values (7, 1), (7, 4), (7, 9);

-- ===============================================
-- COMPLETE DATA VALIDATION - FINAL VERSION
-- ===============================================

do $$
declare
    tests_passed int := 0;
    tests_total int := 12;
    temp_count int;
    success_rate numeric;
    
begin
    raise notice '===============================================';
    raise notice 'COMPLETE DATA VALIDATION TEST';
    raise notice '===============================================';
    
    -- TEST 1: USERS TABLE
    raise notice '';
    raise notice 'TEST 1: Users Table Data Validation';
    raise notice '-----------------------------------';
    
    create temp table expected_users (uid int, name text, email text, password text, descr text, country text);
    insert into expected_users values
    (1, 'alice', 'alice@example.com', 'pass1', 'photographer', 'israel'),
    (2, 'bob', 'bob@example.com', 'pass2', 'traveler', 'usa'),
    (3, 'carol', 'carol@example.com', 'pass3', 'chef', 'italy'),
    (4, 'david', 'david@example.com', 'pass4', 'musician', 'israel'),
    (5, 'eve', 'eve@example.com', 'pass5', 'techie', 'canada'),
    (6, 'frank', 'frank@example.com', 'pass6', 'gamer', 'japan'),
    (7, 'grace', 'grace@example.com', 'pass7', 'reader', 'uk'),
    (8, 'hank', 'hank@example.com', 'pass8', 'blogger', 'france'),
    (9, 'israel1', 'israel1@example.com', 'pass9', 'artist', 'israel'),
    (10, 'israel2', 'israel2@example.com', 'pass10', 'writer', 'israel');
    
    select count(*) into temp_count from (
        (select * from expected_users except select * from users)
        union all
        (select * from users except select * from expected_users)
    ) as differences;
    
    if temp_count = 0 then
        tests_passed := tests_passed + 1;
        raise notice '✅ PASSED: Users table - exact match (10 users)';
    else
        raise notice '❌ FAILED: Users table data mismatch';
    end if;
    
    drop table expected_users;
    
    -- TEST 2: POST TABLE
    raise notice '';
    raise notice 'TEST 2: Post Table Data Validation';
    raise notice '----------------------------------';
    
    create temp table expected_posts (pid int, uid int, content text, imageurl text, pdate date, ptime time);
    insert into expected_posts values
    (101, 1, 'sunset in tel aviv', 'sun.jpg', '2025-05-05', '18:30:00'),
    (102, 2, 'hiking the rockies', 'rockies.jpg', '2025-04-20', '10:00:00'),
    (103, 3, 'best pasta recipe', 'pasta.jpg', '2025-04-22', '12:15:00'),
    (104, 4, 'new song release', 'song.jpg', '2025-05-01', '15:45:00'),
    (105, 1, 'morning coffee', 'coffee.jpg', '2025-03-15', '08:20:00'),
    (106, 5, 'tech trends 2025', 'tech.jpg', '2025-05-03', '09:00:00'),
    (107, 6, 'gaming marathon', 'game.jpg', '2025-04-25', '21:40:00'),
    (108, 2, 'cherry blossoms', 'sakura.jpg', '2025-05-04', '07:50:00'),
    (109, 3, 'street food adventures', 'street.jpg', '2025-05-06', '11:00:00'),
    (110, 4, 'guitar tutorial', 'guitar.jpg', '2025-02-18', '17:10:00'),
    (111, 3, 'city tour', 'oldcity.jpg', '2025-03-01', '10:00:00');
    
    select count(*) into temp_count from (
        (select * from expected_posts except select * from post)
        union all
        (select * from post except select * from expected_posts)
    ) as differences;
    
    if temp_count = 0 then
        tests_passed := tests_passed + 1;
        raise notice '✅ PASSED: Post table - exact match (11 posts)';
    else
        raise notice '❌ FAILED: Post table data mismatch';
    end if;
    
    drop table expected_posts;
    
    -- TEST 3: COMMENT TABLE
    raise notice '';
    raise notice 'TEST 3: Comment Table Data Validation';
    raise notice '-------------------------------------';
    
    create temp table expected_comments (pid int, cdate date, ctime time, uid int, content text);
    insert into expected_comments values
    (101, '2025-05-05', '19:00:00', 2, 'beautiful!'),
    (101, '2025-05-05', '19:05:00', 3, 'love the colors.'),
    (102, '2025-04-21', '14:00:00', 1, 'awesome hike!'),
    (102, '2025-04-22', '16:00:00', 8, 'nice view.'),
    (103, '2025-04-22', '13:00:00', 5, 'yummy!'),
    (104, '2025-05-02', '10:15:00', 6, 'great beat!'),
    (106, '2025-05-03', '11:30:00', 2, 'interesting insights.'),
    (107, '2025-04-26', '22:00:00', 4, 'good luck!'),
    (108, '2025-05-04', '08:10:00', 3, 'so pretty!'),
    (109, '2025-05-06', '12:10:00', 5, 'delicious.'),
    (110, '2025-02-19', '18:00:00', 1, 'helpful tutorial.'),
    (102, '2025-04-21', '14:30:00', 3, 'amazing!'),
    (102, '2025-04-21', '14:45:00', 4, 'great photo!'),
    (102, '2025-04-21', '15:00:00', 5, 'wonderful!');
    
    select count(*) into temp_count from (
        (select * from expected_comments except select * from comment)
        union all
        (select * from comment except select * from expected_comments)
    ) as differences;
    
    if temp_count = 0 then
        tests_passed := tests_passed + 1;
        raise notice '✅ PASSED: Comment table - exact match (14 comments)';
    else
        raise notice '❌ FAILED: Comment table data mismatch';
    end if;
    
    drop table expected_comments;
    
    -- TEST 4: LIKES TABLE
    raise notice '';
    raise notice 'TEST 4: Likes Table Data Validation';
    raise notice '-----------------------------------';
    
    create temp table expected_likes (uid int, pid int, ldate date, ltime time);
    insert into expected_likes values
    (1, 101, '2025-05-05', '21:00:00'),
    (1, 102, '2025-03-21', '14:05:00'),
    (1, 103, '2025-04-22', '14:10:00'),
    (1, 104, '2025-05-02', '11:00:00'),
    (1, 105, '2025-03-15', '09:05:00'),
    (1, 111, '2025-03-02', '11:00:00'),
    (2, 101, '2025-05-05', '18:50:00'),
    (2, 103, '2025-04-22', '12:30:00'),
    (2, 105, '2025-03-15', '09:00:00'),
    (2, 111, '2025-03-02', '11:05:00'),
    (5, 106, '2025-05-03', '12:00:00'),
    (6, 107, '2025-04-25', '23:00:00'),
    (4, 104, '2025-05-01', '16:00:00'),
    (4, 110, '2025-02-18', '18:00:00');
    
    select count(*) into temp_count from (
        (select * from expected_likes except select * from likes)
        union all
        (select * from likes except select * from expected_likes)
    ) as differences;
    
    if temp_count = 0 then
        tests_passed := tests_passed + 1;
        raise notice '✅ PASSED: Likes table - exact match (14 likes)';
    else
        raise notice '❌ FAILED: Likes table data mismatch';
    end if;
    
    drop table expected_likes;
    
    -- TEST 5: FOLLOW TABLE
    raise notice '';
    raise notice 'TEST 5: Follow Table Data Validation';
    raise notice '------------------------------------';
    
    create temp table expected_follows (fuid int, uid int);
    insert into expected_follows values
    (2, 1), (3, 1), (4, 1), (6, 1), (1, 2), (1, 3), (2, 3), (4, 2), 
    (3, 4), (5, 4), (2, 6), (7, 1), (7, 4), (7, 9), (4, 4);
    
    select count(*) into temp_count from (
        (select * from expected_follows except select * from follow)
        union all
        (select * from follow except select * from expected_follows)
    ) as differences;
    
    if temp_count = 0 then
        tests_passed := tests_passed + 1;
        raise notice '✅ PASSED: Follow table - exact match (15 follows)';
    else
        raise notice '❌ FAILED: Follow table data mismatch';
    end if;
    
    drop table expected_follows;
    
    -- TEST 6: SECTION 4 QUERY
    raise notice '';
    raise notice 'TEST 6: Section 4 Query Results';
    raise notice '-------------------------------';
    
    create temp table expected_section4 (pid int, uid int, content text);
    insert into expected_section4 values
    (101, 1, 'sunset in tel aviv'),
    (104, 4, 'new song release'),
    (106, 5, 'tech trends 2025'),
    (108, 2, 'cherry blossoms'),
    (109, 3, 'street food adventures');
    
    create temp table actual_section4 as
	-- REPLACE WITH YOUR SECTION 4 QUERY:

    -- END SECTION 4
    
    select count(*) into temp_count from (
        (select * from expected_section4 except select * from actual_section4)
        union all
        (select * from actual_section4 except select * from expected_section4)
    ) as differences;
    
    if temp_count = 0 then
        tests_passed := tests_passed + 1;
        raise notice '✅ PASSED: Section 4 - correct results';
    else
        raise notice '❌ FAILED: Section 4 query incorrect';
    end if;
    
    drop table expected_section4, actual_section4;
    
    -- TEST 7: SECTION 5 QUERY  
    raise notice '';
    raise notice 'TEST 7: Section 5 Query Results';
    raise notice '-------------------------------';
    
    create temp table expected_section5 (uid int, name text, country text);
    insert into expected_section5 values (3, 'carol', 'italy');
    
    create temp table actual_section5 as
	-- REPLACE WITH YOUR SECTION 5 QUERY:

    -- END SECTION 5
    
    select count(*) into temp_count from (
        (select * from expected_section5 except select * from actual_section5)
        union all
        (select * from actual_section5 except select * from expected_section5)
    ) as differences;
    
    if temp_count = 0 then
        tests_passed := tests_passed + 1;
        raise notice '✅ PASSED: Section 5 - correct results';
    else
        raise notice '❌ FAILED: Section 5 query incorrect';
    end if;
    
    drop table expected_section5, actual_section5;
    
    -- TEST 8: SECTION 6 QUERY
    raise notice '';
    raise notice 'TEST 8: Section 6 Query Results';
    raise notice '-------------------------------';
    
    create temp table expected_section6 (pid int, content text);
    insert into expected_section6 values (102, 'hiking the rockies');
    
    create temp table actual_section6 as
	-- REPLACE WITH YOUR SECTION 6 QUERY:

    -- END SECTION 6
    
    select count(*) into temp_count from (
        (select * from expected_section6 except select * from actual_section6)
        union all
        (select * from actual_section6 except select * from expected_section6)
    ) as differences;
    
    if temp_count = 0 then
        tests_passed := tests_passed + 1;
        raise notice '✅ PASSED: Section 6 - correct results';
    else
        raise notice '❌ FAILED: Section 6 query incorrect';
    end if;
    
    drop table expected_section6, actual_section6;
    
    -- TEST 9: SECTION 7 QUERY
    raise notice '';
    raise notice 'TEST 9: Section 7 Query Results';
    raise notice '-------------------------------';
    
    create temp table expected_section7 (uid int);
    insert into expected_section7 values (1), (5), (6);
    
    create temp table actual_section7 as
	-- REPLACE WITH YOUR SECTION 7 QUERY:

    -- END SECTION 7
    
    select count(*) into temp_count from (
        (select * from expected_section7 except select * from actual_section7)
        union all
        (select * from actual_section7 except select * from expected_section7)
    ) as differences;
    
    if temp_count = 0 then
        tests_passed := tests_passed + 1;
        raise notice '✅ PASSED: Section 7 - correct results';
    else
        raise notice '❌ FAILED: Section 7 query incorrect';
    end if;
    
    drop table expected_section7, actual_section7;
    
    -- TEST 10: SECTION 8 QUERY
    raise notice '';
    raise notice 'TEST 10: Section 8 Query Results';
    raise notice '--------------------------------';
    
    create temp table expected_section8 (uid int, name text);
    insert into expected_section8 values (7, 'grace');
    
    create temp table actual_section8 as
	-- REPLACE WITH YOUR SECTION 8 QUERY:

    -- END SECTION 8
    
    select count(*) into temp_count from (
        (select * from expected_section8 except select * from actual_section8)
        union all
        (select * from actual_section8 except select * from expected_section8)
    ) as differences;
    
    if temp_count = 0 then
        tests_passed := tests_passed + 1;
        raise notice '✅ PASSED: Section 8 - correct results';
    else
        raise notice '❌ FAILED: Section 8 query incorrect';
    end if;
    
    drop table expected_section8, actual_section8;
    
    -- TEST 11: SECTION 9 QUERY
    raise notice '';
    raise notice 'TEST 11: Section 9 Query Results';
    raise notice '--------------------------------';
    
    create temp table expected_section9 (uid int, name text);
    insert into expected_section9 values (1, 'alice');
    
    create temp table actual_section9 as
    -- REPLACE WITH YOUR SECTION 9 QUERY:
	
    -- END SECTION 9
    
    select count(*) into temp_count from (
        (select * from expected_section9 except select * from actual_section9)
        union all
        (select * from actual_section9 except select * from expected_section9)
    ) as differences;
    
    if temp_count = 0 then
        tests_passed := tests_passed + 1;
        raise notice '✅ PASSED: Section 9 - correct results';
    else
        raise notice '❌ FAILED: Section 9 query incorrect';
    end if;
    
    drop table expected_section9, actual_section9;
    
    -- TEST 12: SECTION 10 QUERY
    raise notice '';
    raise notice 'TEST 12: Section 10 Query Results';
    raise notice '---------------------------------';
    
    create temp table expected_section10 (fuid int);
    insert into expected_section10 values (1), (2);
    
    
    create temp table actual_section10 as
    -- REPLACE WITH YOUR SECTION 10 QUERY:
	
    -- END SECTION 10
    
    select count(*) into temp_count from (
        (select * from expected_section10 except select * from actual_section10)
        union all
        (select * from actual_section10 except select * from expected_section10)
    ) as differences;
    
    if temp_count = 0 then
        tests_passed := tests_passed + 1;
        raise notice '✅ PASSED: Section 10 - correct results';
    else
        raise notice '❌ FAILED: Section 10 query incorrect';
    end if;
    
    drop table expected_section10, actual_section10;
    
    -- FINAL RESULTS
    raise notice '';
    raise notice '===============================================';
    raise notice 'COMPLETE VALIDATION RESULTS';
    raise notice '===============================================';
    raise notice 'Tests Passed: % out of %', tests_passed, tests_total;
    
    -- Calculate success rate
    success_rate := round((tests_passed::numeric / tests_total * 100), 1);
    raise notice 'Success Rate: % percent', success_rate;
    
    if tests_passed = tests_total then
        raise notice '';
        raise notice '🎉🎉🎉 PERFECT! 100%% ACCURACY! 🎉🎉🎉';
        raise notice 'All data and queries are exactly correct!';
    elsif tests_passed >= 10 then
        raise notice '';
        raise notice '👍 EXCELLENT! Almost perfect!';
        raise notice 'Only % tests need attention', (tests_total - tests_passed);
    elsif tests_passed >= 8 then
        raise notice '';
        raise notice '✅ GOOD WORK! Keep improving!';
        raise notice '% tests working correctly', tests_passed;
    else
        raise notice '';
        raise notice '⚠️ Issues found - check data and queries';
        raise notice '% tests need fixing', (tests_total - tests_passed);
    end if;
    
    raise notice '===============================================';
    
end $$;