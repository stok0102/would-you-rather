# Would You Rather?

A Ruby on Rails web application designed to help practice using AJAX (Asynchronous Javascript and XML).

User Stories:

* As a user, I want to be able to see a list of questions to vote on so that I can have fun taking a survey. (To begin, consider text only questions, that record the answer and add an indicator for which was selected (text or css).)

* As a user, I want to be able to choose an answer so that I can see how many others also made the same selection as I did. (Use AJAX to process answer and return totals for each response. Hint: consider using group and count methods.)

* As a user, I want to be able to choose a category and see all the questions in that category

* TBD

#### Installation

```
$ git clone https://github.com/noahramey/would_you_rather.git
```
Install gem dependencies
```
$ bundle install
```
Create database
```
rails db:create db:setup
```
Start server at `localhost:3000`
```
rails s
```
* Rails version 5.0.0.1

* Ruby version 2.3.1

## Contact

* _[Caleb Stokka](https://www.linkedin.com/in/caleb-stokka)_
* _[Noah Ramey](https://www.linkedin.com/in/noahramey)_


### License

*MIT License*

The MIT License (MIT)
Copyright (c) 2016, Caleb Stokka, Noah Ramey
