# Checklist for Building an App and Deploying It
## How to Create a New Rails App
- [ ] `rails new appname`

## How to Version Control It and Push to GitHub
- [ ] `cd appname`
- [ ] `git init`
- [ ] `modify git ignore file`
- [ ] `git add .`
- [ ] `git commit -am ‘First commit'`
- [ ] goto GitHub and create new repo
- [ ] select public... do not initialize with a README
- [ ] do not add gitignore file
- [ ] `git remote add origin https://github.com/user/repo.git`
- [ ] `git push -u origin master`

## How to Get it Running on Heroku

- [ ] remove SQLite from gemfile
- [ ] add the following gems to gem file:
```ruby
gem 'pg'
gem 'thin'
group :production do
    gem 'rails_12factor'
end
```
- [ ] `bundle install` (`bi`)
- [ ] modify database.yml to remove SQLite (located in config/database.yml)
```yml
development:
  adapter: postgresql
  database: railsapp_dev
  host: localhost

test:
  adapter: postgresql
  database: railsapp_test
  host: localhost
```
- [ ] `rake db:create`
- [ ] `rake db:migrate`
- [ ] Create Procfile in root directory and the following text to the file: _web: bundle exec thin start -p $PORT_
- [ ] `boot up rails server and test locally`

## Deploying to Heroku
- [ ] make sure everything is pushed to GitHub (not necessary but good practice)
- [ ] `heroku create`
- [ ] `git push heroku master` (being push from local git NOT GitHub)
- [ ] `heroku run rake db:migrate`
- [ ] `heroku restart`
- [ ] if needed, `heroku run rake db:seed`
