class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  def index
    @employees = Employee.all
  end

  # GET /employees/1
  def show
  @employees = Employee.find params[:id]
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
    @employee = Employee.find(params[:id])
    status = params[:status]
  end

  # POST /employees
  def create
    #render :text => params[].inspect and return
    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to employees_path, notice: 'Employee was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /employees/1
  def update
    if @employee.update(employee_params)
      redirect_to employees_path, notice: 'Employee was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /employees/1
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_url, notice: 'Employeedetail was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :date_of_joining, :markuci_email, :coupa_email, :skype_id, :contact_no, :address, :designation, :employee_status, :status)
    end
end
