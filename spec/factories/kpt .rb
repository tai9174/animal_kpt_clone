FactoryBot.define do
  factory :kpt, class: Kpt do
    user
    start_time{Date.today}
    keep_content{ 'test_keep' }
    keep_status{2}
    problem_content { 'test_problem' }
    problem_status{1}
    try_content { 'test_try' }
    try_status{0}
    created_at{Date.today}
    favorite{false}
  end

  factory :second_kpt, class: Kpt do
    user
    start_time{Date.today-1}
    keep_content{ 'test_keep2' }
    keep_status{2}
    problem_content { 'test_problem2' }
    problem_status{1}
    try_content { 'test_try2' }
    try_status{0}
    created_at{Date.today+1}
    favorite{false}
  end

  factory :third_kpt, class: Kpt do
    user
    start_time{Date.today-2}
    keep_content{ 'test_keep3' }
    keep_status{2}
    problem_content { 'test_problem3' }
    problem_status{1}
    try_content { 'test_try3' }
    try_status{0}
    created_at{Date.today+2}
    favorite{false}
  end

  factory :fourth_kpt, class: Kpt do
    user
    start_time{Date.today}
    keep_content{ 'test_keep4' }
    keep_status{2}
    problem_content { 'test_problem4' }
    problem_status{1}
    try_content { 'test_try4' }
    try_status{0}
    created_at{Date.today}
    favorite{true}
  end

  factory :fifth_kpt, class: Kpt do
    user
    start_time{Date.today-1}
    keep_content{ 'test_keep5' }
    keep_status{2}
    problem_content { 'test_problem5' }
    problem_status{1}
    try_content { 'test_try5' }
    try_status{0}
    created_at{Date.today+1}
    favorite{false}
  end

  factory :sixth_kpt, class: Kpt do
    user
    start_time{Date.today-2}
    keep_content{ 'test_keep6' }
    keep_status{2}
    problem_content { 'test_problem6' }
    problem_status{1}
    try_content { 'test_try6' }
    try_status{0}
    created_at{Date.today+2}
    favorite{false}
  end
end
