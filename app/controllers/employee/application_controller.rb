class Employee::ApplicationController < ApplicationController
  def current_user
    Employee.last
  end
end
