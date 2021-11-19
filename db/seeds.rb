# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 require "faker"

 Philo.destroy_all
 Coffee.destroy_all

# @arr = ["Gorgolia", "Jarcone", "Sharomny", "Grecia", "Catholyn"]
# name: @arr.sample
 
 5.times do
  p1 = Philo.create(
    name: Faker::GreekPhilosophers.name,
    quote: Faker::GreekPhilosophers.quote
  ) 
  3.times do
    p1.coffees.create(
      name: Faker::Coffee.blend_name,
      notes: Faker::Coffee.notes, 
    )
  end
end

# Before writing coffee fakers, go into philos model and set it to has_many :coffees 
# because we already told coffees that they belong to philos but philos don't know 
# that they have_many coffees yet. 

# Go into Rails C and do Philo.all then Philo.first to show the guy and 
# then Philo.first.coffees to show that it worked.