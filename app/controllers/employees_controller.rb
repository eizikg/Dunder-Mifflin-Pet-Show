class EmployeesController < ApplicationController

  before_action :get_employee, only: [:update, :delete, :show]


  def index
    @employees = Employee.all
  end

  def show
  end

  def edit
  @employee = Employee.new
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create
    redirect_to @employee
  end

  def update
    @employee.update(employee_params)
  end

  def destroy
    @employee.destroy
  end

private

def get_employee
  @employee = Employee.find(params[:id])
end

def employee_params
  prams.require(:employee).permit(:first_name, :last_name, :title, :alias, :office, :img_url, :dog_id)
end

end
