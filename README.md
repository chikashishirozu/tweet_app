# README

1. Install required dependencies
Install Ruby and Rails
Install Ruby
Install the latest version of Ruby. Use rbenv or rvm for convenient version management. Here is an example of rbenv:

# Install rbenv
$ sudo dnf install rbenv ruby-build -y

# Install the latest Ruby
$ rbenv install 3.3.6
$ rbenv global 3.3.6

# Check the version of Ruby
$ ruby ​​-v
Install Rails Install Rails using RubyGems:

$ gem install rails
Install Bundler Install Bundler to manage Rails dependencies:

$ gem install bundler
2. Create a Rails application Create a new application:

$ rails new TweetApp --database=sqlite3
cd TweetApp
3. Install required gems Install the dependencies listed in the Gemfile:

$ bundle install

4. Set up a SQLite3 database Create a database Create a database with the following command:

$ rails db:create

Running migrations
Reflect the schema defined in the model to the database:

$ rails db:migrate

Checking the database
Start the console to check the created database:

$ rails console
To directly manipulate SQLite3:

$ sqlite3 db/development.sqlite3
5. Starting the Rails server
Start the Rails server with the following command:

$ rails server

Open http://localhost:3000 in your browser to check that the application is running.

6. Creating models and data management
Creating models
Create a model with the following command (e.g. Post model):

$ rails generate model Post title:string content:text

Performing migration
Reflect the created model in the database:

$ rails db:migrate

7. Creating controllers and views
Creating controllers
Create a controller with the following command (e.g. Posts controller):

$ rails generate controller Posts
Configuring routing
Add routing to config/routes.rb:

Ruby
Rails.application.routes.draw do
resources :posts
end

Creating views
Create the necessary views, such as app/views/posts/index.html.erb.

8. Running the application
Start the server and check that the created application works correctly:

$ rails server -b 127.0.0.1 -p 4003
Open http://127.0.0.1:4003 in your browser and check that the top page screen is displayed.

Troubleshooting
Dependency issues
If you get an error when running $ bundle install, check your Gemfile and install any missing libraries.
Database errors
If you get an error when running $ rails db:migrate, check your db/schema.rb and migration files.

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# tweet_app
