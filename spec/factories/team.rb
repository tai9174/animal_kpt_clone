FactoryBot.define do
  factory :team, class: Team do
    user
    team_name{"team_name"}
  end

  factory :second_team, class: Team do
    user
    team_name{"team_name2"}
  end
end