== README
<h3>#Portfolio-Rails | Joss Monster</h3><br>

<p>This app is the initial basic stucture for a personal portfolio site. It is currently in process and this is not the final version.</P>

<h3>RUBY VERSION <h3>
<p>Ruby '2.2.0'</p>

<h3>SYSTEM DEPENDENCIES</h3>

<p>Ruby installed</p>
<p>Rails '4.2.1'</p>
<p>Postgres/psql</p>
<p>apybara</p>
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
		<em>development</em>
	  gem 'byebug'
	  gem 'web-console', '~> 2.0'
	  gem 'spring'
	  gem 'quiet_assets'
		<em>test, development</em>
	  gem 'rspec-rails'
	  gem 'launchy'
		<em>test</em>
	  gem 'shoulda-matchers'
	 	gem 'capybara'

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
