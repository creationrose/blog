#Blogger

This blog is useful for adding topics of interests. You can also add comments to posts.

##Author

Jessica Hori

##Updates

1. Add New Relic performance montoring (database change)
2. Add Jainrain social media login

Step for Janrain:

* create new user based based on FB or Google (how to do with devise handling it?) and save janrain info to it
* verify the token with Janrain and get more info from them
* Maybe do a post request to janrain's servers and provide the created token?
* If it's verified, sign in the user using devise's `sign_in` method (I think?)


```ruby
 -------------------------------
         Architecture
 -------------------------------

 user
 app endpoint
 janrain
```
* user signs in to janrain and gets a token (random string)
* user sends token to app endpoint
* app endpoint extracts the token from the POST
* app endpoint sends the token + app key to janrain
* janrain responds with additional information about the user (if it's a valid token)

```ruby
      users
      |   |
      v   v
janrain <-- app endpoint --> create user --> sign in user --> redirect to main

```


##Install

This app is uses Ruby version 2.2.

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

If you are starting from scratch, we first run: ```rails new folder_name -d postgresql -T ```

-d specifies postgres for the database. You can easily replace that with ```-d mysql ```

-T is to supposed to tell it not to use Rails default testing tools. You can leave it out if you want.

Fix up all files, database.yml, Rakefile,  Gemfile to whatever you want. Then run ```bundle update.```

```rake db:create```

```rails generate rspec:install```  (If you are including this testing in your gemfile)


##License

GNU GPL v.2.0

Report bugs via fork and pull requests.

Feel free to improve and add more features based on user stories.


## User Stories

As a user, I want to be able to post a blog entry with a title and date.

As a user, I want to be able to see all of my posts listed by title and have them link to each post, so I can revisit any entry later.

As a user, I want to be able to update or delete any of my posts, so that I can revise my thoughts later.

As a user, I would like to be able to comment on a blog post, so that I can share my thoughts as well.

As a user, I would like these comments to only be displayed at the bottom of the post they belong to and not on any separate pages.

As a user, I would like to be able to edit or delete my comments, in case I made a mistake when writing them.

As a user, I want to be able to log onto the site in order to make new posts.

As a user, I want to be able to log onto the site in order to make new comments.

As a user, I want to prevent other users from deleting my posts.

As a user, I want to prevent users who arent logged in from commenting on posts.



##Heroku

Live at : https://rubyforum.herokuapp.com/
