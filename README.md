# README

![Build Status](https://travis-ci.org/paa-yaw/management_app.svg?branch=test)

# Project Name: RECMAN

# Brief Description
 * [Brief Description Here](https://github.com/paa-yaw/management_app/blob/master/app_description.md)



# Ruby and Rails Versions

* ruby 2.2.1p85

* Rails 4.2.5.1


# System Dependencies

* check [Here](https://github.com/paa-yaw/management_app/blob/master/Gemfile)

# App Configuration and Setup

* NOTE: you must have the following installed:

* [ruby(2.2.1p85) installation here](https://www.ruby-lang.org/en/downloads/)

* [rails(4.2.5.1) installation here](http://railsinstaller.org/en)

* [how to setup rails with postgres here](https://www.digitalocean.com/community/tutorials/how-to-setup-ruby-on-rails-with-postgres) OR
[here](https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-ubuntu-14-04)

# Getting Started

* run the following commands:

```
  mkdir app_dir

  cd app_dir

  git clone https://github.com/paa-yaw/management_app.git
  
  cd app_dir/management_app

  bundle install

  bin/rails s

```  
# User Credentials
  * [check here](https://github.com/paa-yaw/management_app/blob/master/app_description.md#user-credentials)


# Database initialization

* NOTE: you must already have postgres setup with rails
* In your database.yml setup your username and password for development and production using environment variables like so:

```
  
development:
  <<: *default
  database: management_app_development
  username: <%= ENV['MANAGEMENT_APP_DATABASE_USERNAME'] %>
  password: <%= ENV['MANAGEMENT_APP_DATABASE_PASSWORD'] %>
  host: localhost

production:
  <<: *default
  database: management_app_production
  username: management_app
  password: <%= ENV['MANAGEMENT_APP_DATABASE_PASSWORD'] %>


```

 
# How to run the test suite

* NOTE THE FOLLOWING:

  * RSpec is the tool used to run the test suit. Please make sure that it's installed and configured properly. [resource here](https://github.com/rspec/rspec-rails)

  ## the current test suite is INCOMPLETE AND BROKEN!!!
    * 342 examples, 134 failures, 81 pending
    * You have to improve upon the test suite to have all 342 examples passing.

  * You can run the test suite by running either of the following command:

  ```
    bundle exec bin/rake #to run all rspec tests 
    OR
    bundle exec rspec

  ```

  * To run tests on specific files run the following command:
  
    for instance, to run tests written for app/recruiter/applicant_details_controller.rb

  ```
    bundle exec rspec spec/controllers/recruiter/applicant_details_controller_spec.rb 

  ```
# License  

MIT License

Copyright (c) [2017] [Paa Yaw](https://github.com/paa-yaw)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

