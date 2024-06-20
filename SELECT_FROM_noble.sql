-- 01. Winners from 1950
/* Change the query shown so that it displays Nobel prizes for 1950.
        SELECT yr, subject, winner
        FROM nobel
        WHERE yr = 1960 */

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

-- 02.1962 Literature
/*Show who won the 1962 prize for literature.*/

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'literature'

-- 03.Albert Einstein
-- Show the year and subject that won 'Albert Einstein' his prize.
select yr, subject
from nobel
where winner ='Albert Einstein' 

-- 04.Recent Peace Prizes
-- Give the name of the 'peace' winners since the year 2000, including 2000.
select winner
from nobel
where subject = 'peace' and yr >=2000

-- 05.Literature in the 1980's
-- Show all details (yr, subject, winner) of the literature prize winners for 1980 to 1989 inclusive. 
select *
from nobel
where subject= 'literature' and yr between 1980 and 1989

-- Only Presidents
/* Show all details of the presidential winners:
      Theodore Roosevelt
      Thomas Woodrow Wilson
      Jimmy Carter
      Barack Obama*/
SELECT * 
FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Thomas Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')

-- Show the winners with first name John
select winner
from nobel
where winner like 'John%'

-- Show the year, subject, and name of physics winners for 1980 together with the chemistry winners for 1984.

