class ApiController < ActionController::Base
  def toggle_job_enabled
    job = Admin::Job.find_by_id(params[:id])
    job.update(:enabled => !job.enabled)
    render json: { result: job.enabled }, status: 200
  end
end