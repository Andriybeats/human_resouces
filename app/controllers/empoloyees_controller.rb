class EmpoloyeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def create
    @employee = Employee.new(position_params)
    if @employee.save
      redirect_to @employee
    else
      render 'new'
    end

  end

  def update
    @employee = Position.find(params[:id])

    if @employee.update(employee_params)
      redirect_to @employee
    else
      render 'edit'
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    redirect_to employees_path
  end

  private
  def employee_params
    params.require(:employee).permit(:name, :surname, :date_birthday, :city_birthday, :address, :department, :start_work, :position)
  end
end
