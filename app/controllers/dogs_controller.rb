class DogsController < ApplicationController

  before_action :get_dog, only: [:update, :destroy, :show, :edit]


  def index
    @dogs = Dog.all
  end

  def new
  @dog = Dog.new
  end

  def show
  @all_employees = @dog.employees
  end

  def edit
  end

  def create
    @dog = Dog.create(dog_params)
    redirect_to @dog
  end

  def update
    @dog.update(dog_params)
    redirect_to @dog
  end

  def destroy
    @dog.destroy
    redirect_to dogs_path
  end


   private

   def get_dog
    @dog = Dog.find(params[:id])
   end

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end
end
