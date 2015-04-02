#Blogger 

This blog is useful for adding topics of interests. You can also add comments to posts. 

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

If you are starting from scratch, we first run: ```rails new folder_name -d postgresql -T ```

-d specifies postgres for the database. You can easily replace that with ```-d mysql ```

-T is to supposed to tell it not to use Rails default testing tools. You can leave it out if you want.

Fix up all files, database.yml, Rakefile,  Gemfile to whatever you want. Then run ```bundle update.```

```rake db:create```

```rails generate rspec:install```  (If you are including this testing in your gemfile)


##License

GNU GPL v.2.0

Report bugs via fork and pull requests.

If you would like to improve and add more features and functionality feel free.