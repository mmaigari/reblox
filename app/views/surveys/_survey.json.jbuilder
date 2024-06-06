json.extract! survey, :id, :email, :age, :location, :invested, :ifso, :goals, :challenge, :solution, :solution_desc, :comfort, :liquidity, :ready, :created_at, :updated_at
json.url survey_url(survey, format: :json)
