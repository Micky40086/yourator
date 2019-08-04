json.extract! admin_job, :id, :company_id, :name, :enabled, :intro, :condition, :welfare, :salary, :created_at, :updated_at
json.url admin_job_url(admin_job, format: :json)
