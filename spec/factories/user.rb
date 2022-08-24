FactoryBot.define do
  factory :user do
    name { 'test_name' }
    password{'test_password'}
    created_at{Date.today}
    admin{false}
    id{101}
  end

  factory :second_user , class: User do
    name { 'test_name2' }
    password{'test_password2'}
    created_at{Date.today}
    admin{false}
    id{102}
  end

  factory :admin_user, class: User do
    name { 'admin_name' }
    password{'admin_password'}
    created_at{Date.today}
    admin{true}
    id{110}
  end
end
