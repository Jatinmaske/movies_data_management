use etlhive;
select *  from movies_sql;
--  Retrieve the names of all the Bollywood movies which are of drama genre in the dataset.
select movie_name,Genre from movies_sql where genre='drama';

--  Retrieve the names of all the Bollywood movies of Amir Khan in the dataset.
select movie_name,Lead_Star from movies_sql where Lead_Star='aamir khan';

-- Retrieve the names of all the Bollywood movies which are directed by RamGopal Verma in the dataset.
select movie_name,director from movies_sql where director='ram gopal verma';

 -- Retrieve the names of all the Bollywood movies which have been released over more than 1000 number of screens in the dataset. 
select movie_name, number_of_screens
 from movies_sql where Number_of_Screens > 1000;
 
 -- Retrieve the names of all the Bollywood movies which have generated Revenue(INR) more than 700000000 in the dataset. 
 select movie_name,revenue from movies_sql where Revenue > 700000000;
 
 /*Retrieve the names of all the Bollywood 
movies which have budget less than 1cr in 
the dataset.*/
select * from movies_sql;
select movie_name,budget from movies_sql where budget<10000000;

/*  Retrieve the names of all the Bollywood 
movies which are flop in the 
dataset.(flop=revenue – budget) */
select movie_name from movies_sql where (revenue)<(budget);

/*  Retrieve the names and profit of all the 
Bollywood movies in the 
dataset.(profit=revenue – budget)*/
select movie_name from movies_sql where (revenue)>(budget);

/*  Retrieve the names and loss of all the 
Bollywood movies in the 
dataset.(loss=revenue – budget)*/
select movie_name from movies_sql where (revenue)-(budget);

/*Retrieve the names of all the Bollywood 
movies which have been released on 
holidays in the dataset. */

select movie_name,release_period from movies_sql  where release_period='holiday';

/*Retrieve the names of all the Bollywood 
movies which have lead star as Akshay 
Kumar and directed by Priyadarshan  in the 
dataset.*/
select movie_name,director from movies_sql where lead_star='akshay kumar' and director='priyadarshan';

/* Retrieve the names of all the Bollywood 
movies starting with ‘a’ in the dataset.*/
select movie_name from movies_sql where movie_name like 'a%';

/*Retrieve the names of all the Bollywood 
movies ending with ‘a’ in the dataset.*/
select movie_name from movies_sql where movie_name like '%a';

/*Retrieve the names of all the Bollywood 
movies having ‘a’ at second place of the 
name in the dataset.*/
select movie_name from movies_sql where movie_name like '_a%';

/* Retrieve the names of all the Bollywood 
movies having music of amit trivedi the 
dataset*/
select movie_name,music_director from movies_sql where music_director='amit trivedi';

/*Retrieve the names of all the comedy 
movies of Akshay Kumar in the dataset.*/
select movie_name,lead_star,genre from movies_sql where lead_star='akshay kumar' and genre='comedy';

/* Retrieve the names of movies  and star 
name starring khan in the dataset.*/
select movie_name,lead_star from movies_sql where lead_star like '%khan';

/*Retrieve all the information of movies 
race and race2 in the dataset. */
select * from movies_sql where movie_name='race' or movie_name='race2';

/*Retrieve the names of all the thriller 
Bollywood movies in the dataset.*/
select movie_name,genre from movies_sql where genre='thriller';

/*Retrieve the names and budget of all the 
Bollywood movies according to the highest 
budget to lowest budget in the dataset.*/
select movie_name,budget from movies_sql order by budget desc;

/* Retrieve the names and budget of top 5  
Bollywood movies with highest budget in 
the dataset.*/
select movie_name,budget from movies_sql order by budget desc limit 5;

/* Retrieve the names of top 10  Bollywood 
movies with highest revenue generation in 
the dataset*/
select movie_name,revenue from movies_sql order by revenue desc limit 10;

/*. Retrieve the names  of top 5  movies of 
salman khan in the dataset.*/
select movie_name,lead_star from movies_sql where lead_star='salman khan'  limit 5;

/*  Retrieve the names of top 5 floped movies 
in the dataset. */
select movie_name from movies_sql where revenue < budget  limit 5;

/*Retrieve the names of top 5 hit movies in 
the dataset.*/
select movie_name ,revenue from movies_sql order by revenue desc limit 5;

/*Which is the second movie released on 
maximum screens. */
select movie_name from movies_sql order by number_of_screens desc limit 1  offset 1;

/*Which is the 10th movies with highest 
budget*/
select movie_name from movies_sql order by budget desc limit 1 offset 9;
select * from movies_sql;

/*nWhich are the flopped movies of Akshay 
Kumar. */
select lead_star,movie_name from movies_sql where lead_Star='akshay kumar' and revenue < budget ;

/* With which director Sharukh Khan have 
given the biggest hit movie . */
select Director from movies_sql where lead_star like  'Sharukh%khan%' order by revenue limit 1;




