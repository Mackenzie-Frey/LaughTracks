## Laugh Tracks

Laugh Tracks applies Model View Controller (MVC) concepts to create Sinatra based application to feature comedians on the application and the ability to sort comedians and upload a new one.

## Laugh Tracks

This is your Week 1 Solo Project for Module 2 of the Backend program at Turing.

This project will allow you to apply the lessons you've learned this first week in an ongoing project. We encourage you to take chances, be risky, try new things.

At the end of this project, you will submit a blog post as a reflection of what you learned and implemented in your project.
Details are in a section below.

The primary goals for this project:

- creation of a basic web application from scratch
- implementing basic MVC structure to your project
- save and retrieve data from a database
- display content on a web page with some very basic styling
- learning how to test your code effectively at a Controller and a Model level


Fork this repository from Turing's account to your own account, and clone your new forked repository to your laptop.


## Setup

Before you begin work, run the following commands:

```
bundle install
bundle update
```

## Requirements

- students must implement Sinatra and PostgreSQL
- all new code must be 100% tested
- you do not need any additional gems beyond what has been provided
  - if you find a gem you want to use, please DM your instructors for permission before implementing them


## User Stories

```
User Story 1

As a visitor
When I visit `/comedians`
Then I see a list of comedians with the following
information for each comedian:
  * Name
  * Age
  * City

- You may use any internet site to fetch this information to put into your database
- The city attribute can hold birthplace or current known hometown.
- For testing, you should ensure that the name, age and city only appear on a
  specific area of the page for that single comedian.
- Minimum of 12 comedians on the page.
```

```
User Story 2

As a visitor
When I visit `/comedians`
Then I also see a list of each comedian's TV specials' names

- You may find this information on IMDB.com and other related sites.
- Your project does not need to include *every* special the comedian has ever made.
```

```
User Story 3

As a visitor
When I visit `/comedians`
Where I see a list of each comedian's TV specials' names,
I also see each special's run-time length in minutes, and a thumbnail image.

- Image locations (URLs) can be stored in the database as a string.
- Use the image URLs from IMDB or other online source for the special
- Use CSS styling to scale the image smaller if needed to fit on the page
```

```
User Story 4

As a visitor
When I visit `/comedians`
Then I see an area at the top of the page called 'Statistics'
In that 'Statistics' area, I see the following information:
- the average age of all comedians on the page
- the average run length of every TV special on the page
- a unique list of cities for each comedian on the page

Averaging and uniqueness should be done in ActiveRecord NOT
using Ruby
```

```
User Story 5

As a visitor
When I visit `/comedians?age=34`
Then I see the list of comedians on the page only shows
comedians who match the age criteria.

- All other information on the page is still expected to be present
- Testing should check that excluded comedians do not show up.
```

```
User Story 6

As a visitor
When I visit `/comedians`
For each comedian, I see a count of their TV specials
and the Statistics area on the page should list a total count
of TV specials for every comedian.
```

```
User Story 7

As a visitor
When I visit `/comedians?age=34`
Then I see a list of all comedians with an age of 34
Just like a previous User Story, BUT all other statistics
information in the 'Statistics' area of the page should be limited
to reflect only the information about the comedians listed on
the page.

- Testing should ensure that calculated statistics are
  correct for a limited subset of data
```

```
User Story 8

As a visitor
When I visit `/comedians/new`
Then I see a form to input a new comedian into the database
Including fields for their name, age and city.
When the form is successfully submitted and saved,
Then I am redirected to `/comedians`
And I see the new comedian's data on the page.
```

## Extensions

```
As a user, when I visit `/comedians`,
I see all previous information
And each comedian's name is a link to a page that only shows
that comedian's information and TV specials.

For example, comedian #4 in your database would have a page like
`/comedians/4`

- Testing should check that only this one comedian's information
  is on the page.
```

```
As a user, when I visit `/comedians?sort=name`
Then I see all previous information, but all comedians are
sorted alphabetically by the name of the comedians.
```

```
As a user, when I visit `/comedians?sort=city`
Then I see all previous information, but all comedians are
sorted alphabetically by the name of their city.
```

```
As a user, when I visit `/comedians?sort=age`
Then I see all previous information, but all comedians are
sorted alphabetically by the age of the comedian.
```

## Blog Post Deliverable

At the end of this project, write a reflection on what you learned and implemented.
This will help you review your own code and gain practice explaining/talking through the code and the process/decisions that were made along the way. Include code snippets from the project in your explanations.

We reccommend writing your blog on [Medium](https://medium.com), but if you have a blog site that you already use that is okay too. However, it must be publically accessible and the link should be submitted to your instructors via Direct Message.

Here are some questions to think about as you write your post:

- How did you approach this project?
  What sort of planning did you do?

- What was the most challenging part of the project?
  How did you deal with that challenge?
  Were you able to overcome it?
  If yes, how did you overcome it?
  If no, what do you think is the reason for not being able to and what would you do differenlty?

- What did you enjoy most about the project?

- What part of the project are you most proud of and why?

- If you had to do this project again, what would you want to change? (This could be your process, organization of code, particular piece of code that you would want to write differently etc.)

- What is one specific thing that you want to take from this project and implement in your next project? (This could be something that worked well for you or something that didn't go well, but you learned from it.)



## Rubric

This project is not evaluated. HOWEVER, the following is an example rubric we might follow for this type of project:


|   	| 1. Below Standard	| 2. Approaching Standard	| 3. Meets Standard	| 4. Above Standard	|
|---	|---	|---	|---	|---	|
| Featrure Completeness | - Fewer than 75% of stories are complete | - 75% of user stories are complete, but not all of them are fully implemented | - All user stories are complete | All user stories are completed and additional extension work was attempted|
| MVC Responsibilities | - Models, Views, and Controllers do not have clear responsiblities   EX. Views are making calls to the model or database, Controllers are handiling calculations or making database calls | Views contain logic that makes significant calls to the database OR Controllers are handling calcualations OR Models process data ineffciently and is not passing responsiblity to database 	|  - Views only contain `.each` calls, branch logic, and formatted CSS - Controllers push almost all the work to the Models for reading/writing data to the database - Models handle calulcations and interactions with the database | - Views only display data and do not make addiontal calls to the databsae; they may include branch logic - Controllers request all data from Models excepts `.all`, `.find`, `.create`, `.delete` methods - Models read/write all other dta using branch lgoic of smaller methods |
| ActiveRecord	| - No ActiveRecord used | - Using Ruby enumerables where ActiveRecord could be used mixed with some ActiveRecord | - Using ActiveRecord to handle calculations and interactions to the database correctly	| - Using most efficient ActiveRecord queries  	|
| Testing	| - Below 75% coverage | - Testing coverage is between 75-98% - Models tests are incomplete - Hardcoding values for expectations - Poorly written | - 98% of better test coverage for feature tests - 100% for model tests - Using variable as opposed to hard coding values - Use of within blocks for targeted feature test - Robustly written tests 	| - Clear TDD - Test Filse extremely organized - Utilize `before(:each)` blocks for test setup - 100% coverage for features and models	|
| Usability/Styling | - Little or no Styling - User workflow is problematic (must type urls) | - Styling is incomplete - Layout does not follow good HTML patterns - Incomplete Navigation | - Purposeful styling pattern (complementary color choices, intentional layout of HTML - Links/Buttons to reach all ares of the site 	|  -Extremley well styled and purposeful layout(production ready) - Excellent color scheme and font usage(not default fonts) - Easy to use and follow application flow (does not have to search for links or buttons on the page) - Utilizes addiontal tooling(ex. SCSS) 	|
