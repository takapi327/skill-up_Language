FactoryBot.define do

  factory :language do
    tittle            {Faker::Name.last_name}
    name_id           {Faker::Number.between(from: 1, to: 8)}
    day               {Faker::Date.in_date_period}
    study_id          {Faker::Number.between(from: 1, to: 12)}
    content           {Faker::Markdown.random}
    user_id           {Faker::Number.between(from: 1, to: 8)}
  end
  
end