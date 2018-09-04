# Chitter

Chitter is a simple web app that - like Twitter - let's users post and view 'peeps.' 


## Domain Model

This is a full-stack application using three-tier MVC architecture.  

```
** Insert model **
```

## Database Model

```
** Insert model **
```

## Testing

The testing framework utilises RSpec, SimpleCov & Capybara.

To run the tests: `rspec` from the project root to see test results and coverage.  

The `./spec/features/web_helpers.rb` file contains a few methods to keep the testing code DRY.

The application will either connect to either the 'chitter' or 'chitter_test' database according to the Rakefile.  


## How to install and use Chitter

To install: Clone this repo & run `bundle install`

To use: Create PostgreSQL databases on your local machine: `chitter` and `chitter_test` (e.g. using TablePlus) TablePlus.

Create two tables as detailed in the [database model](#database-model) above.

Once the relevant gems have been installed and the databases and tables have been created on your local machine, Chitter is ready to use.

Run `rackup` [or e.g. `rackup -p 9292`] and go to the relevant url: `localhost9292' -  this will take you to the homepage.  

From there, you will be able to enjoy the following features...


## User Stories

As a Maker...

So that I can let people know what I am doing  
I want to post a message (peep) to chitter

So that I can see what others are saying  
I want to see all peeps in reverse chronological order

So that I can better appreciate the context of a peep
I want to see the time at which it was made

So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

So that only I can post messages on Chitter as me
I want to log in to Chitter

So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep