json.array!(@jobs) do |job|
  json.extract! job, :id, :company, :location, :title, :description, :duties, :experience, :education, :posted
  json.url job_url(job, format: :json)
end
