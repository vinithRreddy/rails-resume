json.extract! work_experience, :id, :company, :start_date, :end_date, :position, :created_at, :updated_at
json.url work_experience_url(work_experience, format: :json)
