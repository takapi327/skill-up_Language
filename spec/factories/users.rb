FactoryBot.define do

  # passwordがあると何故かrails sがエラーになるのでテスト完了後はコメントアウト
  factory :user do
    # password = Faker::Internet.password(min_length: 6)
    name {Faker::Name.last_name}
    # password {password}
    # password_confirmation {password}
    sequence(:email) {Faker::Internet.email}
  end

end