class CoffeesController < ApplicationController
  before_action :set_philo
  before_action :set_coffee, only: [:show, :edit, :update, :destroy]
  
  def index
    render component: "Coffees", props:{philo: @philo, coffees: @philo.coffees}
  end

  def show
    render component: "Coffee", props:{coffee: @coffee}
  end

  #Who is adding a new coffee to their list?  This coffee belongs to someone.
  def new
    render component: "NewCoffee", props:{philo: @philo}
  end

  def create
    @coffee = @philo.coffees.new(coffee_params)
    if (@coffee.save)
      redirect_to philo_coffees_path(@philo.id)
    else
    end

  end

  # You need the philosopher because you need to know who's coffee is being
  # edited and you need the coffee so you can prefill the form
  def edit
    render component: "EditCoffee", props:{philo: @philo, coffee: @coffee}
  end

  #show them rails/info/routes to see why it redirects there
  def update
    if (@coffee.update(coffee_params))
      redirect_to philo_coffees_path(@philo.id)
    else
    end
  end

  def destroy
    @coffee.destroy
    redirect_to philo_coffees_path
  end

  private

  def coffee_params
    param.require(:coffee).permit(:name, :notes)
  end

  def set_philo
    @philo = Philo.find(params[:philo_id])
  end

  def set_coffee 
    @coffee = @philo.coffees.find(params[:id])
  end

end
