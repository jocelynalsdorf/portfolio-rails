#README
<h3>Portfolio-Rails | Joss Monster</h3><br>

<p>This app is the initial basic stucture for a personal portfolio site. It is currently in process and this is not the final version.</P>



<h2><em>Attn Mike: To sign in as admin you must sign up with name "jocelyn alsdorf" (email joss@test.com)<em></h2>
<h3>Heroku link: https://radiant-depths-9000.herokuapp.com/ </h3>

<h4>RUBY VERSION <h4>
<p>Ruby '2.2.0'</p>

<h4>SYSTEM DEPENDENCIES</h4>

<p>Ruby installed</p>
<p>Rails '4.2.1'</p>
<p>Postgres/psql</p>
<p>capybara</p>
<p>rspec</p>




<h3>CONFIGURATION</h3>
<p>Initial set-up:
<p>create file called .railsrc in home directory and add line -d postgresql -T </p>
<p>rails new app-name -d postgresql -T   (for testing purposes)</p>

		gem 'rails', '4.2.1'
		gem 'pg'
		gem 'sass-rails'
		gem 'bootstrap-sass'
		gem 'uglifier', '>= 1.3.0'
		gem 'coffee-rails', '~> 4.1.0'
		gem 'jquery-rails'
		gem 'turbolinks'
		gem 'pry'
		gem 'bcrypt-ruby', '~> 3.1.5', require: "bcrypt"
		gem 'devise', '~> 3.4.1'
		gem 'rails_12factor'
		-development
	  gem 'byebug'
	  gem 'web-console', '~> 2.0'
	  gem 'spring'
	  gem 'quiet_assets'
		-test, development
	  gem 'rspec-rails'
	  gem 'launchy'
		-test
	  gem 'shoulda-matchers'
	 	gem 'capybara'
	 	gem "factory_girl_rails", "~> 4.0"
  	gem 'simplecov', require: false

<h3>Database creation</h3>
<p>ActiveRecord</p>
<p>Postgres -See Schema for migration details</p>

<h3>Database initialization</h3>
<p>rake DB:create:all</p>
<p>rake DB:migrate</p>


<h3>How to run the test suite</h3>
<p>rails generate rspec:install</p>
<p>'rspec'</p>
<p>In rails_helper: require 'spec_helper', require 'rspec/rails', require 'capybara/rails'</p>




<h3>MIT License. Copyright 2015 Jocelyn Alsdorf</h3>



<tt>rake doc:app</tt>.
