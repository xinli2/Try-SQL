-- 1)List the titles of all movies.
select title from MOVIE;


-- 2)List the actor table.
desc ACTOR;


-- 3)list movies that have scores greater than 7.0.
select * from MOVIE where SCORE > 7.0;

-- 4) List movies that have scores greater than 7.0 or years greater than 1990.
select * from MOVIE where SCORE > 7.0 or YEAR > 1990;


--5) List movies that have scores greater than 7.0 and years greater than 1990.
select * from MOVIE where SCORE > 7.0 and YEAR > 1990;


-- 6) List movies that have votes between 3000 and 4000.
select * from MOVIE where votes > 3000 and votes < 4000;