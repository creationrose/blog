#Blogger

This blog is useful for adding topics of interests. 
This is step 2 and uses a different database in order to be able to fix mistakes on either assessment separately. 


##Author

Jessica Hori


##Install

This app is used in connection with Rails and ActiveRecord.

Download or fork the repository and bundle in terminal in order to use the required gems and dependencies.

Steps:


```ruby
rake db:create:all
```


Then:


```ruby
rake db:migrate
```


Then:

```ruby
rake db:test:prepare
```

Run Rspec and it should all pass. Then you are ready to run ```rails server```
 or ```rails s``` in the terminal.  Go to ```localhost:3000```  to use to program.

----------------------
----------------------

##License

GNU GPL v.2.0

Report bugs via fork and pull requests.

If you would like to improve and add more features and functionality feel free.


## User Stories

As a user, I want to be able to log onto the site in order to make new posts.

As a user, I want to be able to login onto the order to make new comments.


##Heroku

Live at : https://rubyforum.herokuapp.com/
