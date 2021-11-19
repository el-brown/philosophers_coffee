class Philo < ApplicationRecord
  has_many :coffees, dependent: :destroy
end
