# README
#1: SET UP
  rails new ssr-has-many-reddit -d postgresql --webpack=react
  $ cd ssr-has-many-reddit
  $ bundle add react-rails
  $ rails g react:install
  $ rails db:create

  code .

#2: MODELS
  $ rails g model philo name:string quote:string 
  $ rails g model coffee name notes philos:belongs_to

#3: CONTROLLERS
  $ rails g controller philos index show new create edit update destroy
  $ rails g controller coffees index show new create edit update destroy

#4: SEED DATABASE (MODELS)
  4A. Add faker gem (and others) to Gemfile
    gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 
      'master'
    gem "better_errors"
    gem "binding_of_caller"
    gem 'pry-rails'
  4B. Create __.times do loops in seeds.rb

#5: FILL OUT CONTROLLER
  Use controller to grab model's data from the database and send
  it through props to the correct component

#6: ROUTES 
    resources :philos do
    resources :coffees 
    end
  Check routes with rails/info/routes

#7: CREATE COMPONENTS
  touch app/javascript/components/Philos.js
  touch app/javascript/components/Philo.js
  touch app/javascript/components/NewPhilo.js
  touch app/javascript/components/EditPhilo.js

#8: RUN COMPONENTS
  Create a very basic functional component with a header 
  for each component page and make sure they all work

#9: 