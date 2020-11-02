json.extract! personaldetail, :id, :first_name, :last_name, :gmail, :mobile_no, :city, :state, :pin_code, :created_at, :updated_at
json.url personaldetail_url(personaldetail, format: :json)
