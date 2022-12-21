FactoryBot.define do
  factory :adoption do
    user
    tree
    name { "adoptionName" }
    starts_at { Date.today }
    ends_at { Date.today + 1.year }
  end
end
