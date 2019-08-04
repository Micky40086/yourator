class AdminController < ApplicationController
  def index
    @company = Admin::Company.first
    @jobs = @company.jobs
  end
end
