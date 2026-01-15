# README

Install required dependencies
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

# Install Rails Install Rails using RubyGems:

$ gem install rails

# Install Bundler Install Bundler to manage Rails dependencies:

$ gem install bundler

# Install required gems Install the dependencies listed in the Gemfile:

$ bundle install

# Setting up a SQLite3 database
Creating a database
Create a database with the following command:

$ rails db:create

Run migration
Reflect the schema defined in the model to the database:

$ rails db:migrate

$ rails console

$ sqlite3 db/development.sqlite3

# Starting the Rails server
Start the Rails server with the following command:

$ rails server

Open http://localhost:3000 in your browser to check that the application is running.

Creating views
Create the necessary views, such as app/views/posts/index.html.erb.

# Running the application
Start the server and check that the created application works correctly:

$ rails server -b 127.0.0.1 -p 4003

Open http://127.0.0.1:4003 in your browser and check that the top page screen is displayed.

# Troubleshooting
Dependency issues
If you get an error when running $ bundle install, check your Gemfile and install any missing libraries.
Database errors
If you get an error when running $ rails db:migrate, check your db/schema.rb and migration files.

# 🚀 次のステップ（余談）

将来 CSS をモダン化したくなったら：

bundle add cssbundling-rails
rails css:install:tailwind
