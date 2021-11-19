class PhilosController < ApplicationController
  before_action :set_philo, only: [:show, :update, :edit, :destroy]

  
  # Connecting Model to View. Show in rails C what you're grabbing.
  # Send it as props to the component (make component).  
  # It will be accessable to that component using props.philos (KEY)
  # will give you Philo.all (VALUE)


  def index
    @philos = Philo.all
    render component:"Philos", props:{philos: @philos}
  end

  # show and edit are both going to need access to a specific philo
  # so to keep our code DRY (don't repeat yourself)

  #the @philo is coming from set_filo - before_action
  def show
    render component: "Philo", props: {philo: @philo}
  end

  #This is just a component with a form. New renders the page, 
  # create runs the logic to create a philo. Similar to edit/update
  def new
    render component: "NewPhilo"
  end

  # If philo.new saves 
  def create
    @philo = Philo.new(philo_params)
    if(@philo.save)
      redirect_to root_path
    end
  end

  # You want the form to be prefilled with the philos information
  #so it needs info from the database
  def edit
    render component: "EditPhilo", props: {philo: @philo}
  end

  #if the trainer successfully updates, redirect to a page
  def update
    if @philo.update(philo_params)
      redirect_to root_path
    else
    end
  end

  #we don't want to render a page for this, we just want an action
  def destroy
    @philo.destroy
    redirect_to root_path
  end

  private

  def set_philo
    @philo = Philo.find(params[:id])
  end

  # Require that there is a philosopher being created/updated and that 
  # it is permitting only :name and :quote attributes
  def philo_params
    params.require(:philo).permit(:name, :quote)
  end

end
