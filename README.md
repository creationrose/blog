#Blogger

<<<<<<< HEAD
This blog is useful for adding topics of interests. You can also add comments to posts.
=======
This blog is useful for adding topics of interests. 
This is step 2 and uses a different database in order to be able to fix mistakes on either assessment separately. 

>>>>>>> 251ce9a

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

<<<<<<< HEAD
If you are starting from scratch, we first run: ```rails new folder_name -d postgresql -T ```

-d specifies postgres for the database. You can easily replace that with ```-d mysql ```

-T is to supposed to tell it not to use Rails default testing tools. You can leave it out if you want.

Fix up all files, database.yml, Rakefile,  Gemfile to whatever you want. Then run ```bundle update.```

```rake db:create```

```rails generate rspec:install```  (If you are including this testing in your gemfile)


=======
>>>>>>> 251ce9a
##License

GNU GPL v.2.0

Report bugs via fork and pull requests.

If you would like to improve and add more features and functionality feel free.


## User Stories

<<<<<<< HEAD
As a user, I want to be able to post my deepest thoughts in a blog entry with a title and date.

As a user, I want to be able to see all of my posts listed by title and have them link to each post, so I can revisit any entry later.

As a user, I want to be able to update or delete any of my posts, so that I can revise my thoughts later.

As a user, I would like to be able to comment on a blog post, so that I can share my thoughts as well.

As a user, I would like these comments to only be displayed at the bottom of the post they belong to and not on any separate pages.

As a user, I would like to be able to edit or delete my comments, in case I made a mistake when writing them.
=======
As a user, I want to be able to log onto the site in order to make new posts.

As a user, I want to be able to login onto the order to make new comments.


##Heroku

Live at : https://rubyforum.herokuapp.com/
>>>>>>> 251ce9a
