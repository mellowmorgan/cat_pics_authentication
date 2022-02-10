# Cat Pic Authentication

#### Created By: Morgan Waites, Frank Proulx, Christopher Neal, Matt Casperson

#### Ruby on Rails app for user authentication with cat pics.

## Technologies Used

* _Ruby_
* _Gems_
* _Bundler_
* _Postgres_
* _Rails_
* _BCrypt_
* _Capybara_


## Description

This project is a Cat Pic ruby rails app showing authentication and user log in authorization with BCrypt. Users can upload cat photos.

## System Requirements

* Ruby v2.6.5 recommended

## Setup/Installation Requirements

## Setup/Installation Requirements

* Create and/or navigate to the directory you would like to contain this project on your computer.
* Git clone this repo.
* Navigate into project directory 
* Type bundle install in the terminal to populate gems
* To create a database using the database backup included in this project, type in your terminal: 
      createdb [DATABASE NAME] 
      psql [DATABASE_NAME] < cat_pics.sql
      createdb -T [DATABASE_NAME] [TEST_DATABASE_NAME]
* Type rspec in the terminal to confirm passing of all tests  
* Type ruby app.rb to run the program with Sinatra
* Open browswer and enter the url "http://localhost:3000/" unless otherwise prompted in the terminal

## License

[MIT](https://opensource.org/licenses/MIT) Copyright (c) 2022 Morgan Waites, Frank Proulx, Christopher Neal, Matt Casperson
