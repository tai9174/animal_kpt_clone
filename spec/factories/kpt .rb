FactoryBot.define do
  factory :kpt, class: Kpt do
    user
    date{Date.today}
    keep_content{ 'test_keep' }
    keep_status{1}
    problem_content { 'test_problem' }
    problem_status{1}
    try_content { 'test_try' }
    try_status{1}
    created_at{Date.today}
  end

  factory :second_kpt, class: Kpt do
    user
    date{Date.today+1}
    keep_content{ 'test_keep2' }
    keep_status{1}
    problem_content { 'test_problem2' }
    problem_status{1}
    try_content { 'test_try2' }
    try_status{1}
    created_at{Date.today+1}
  end

  factory :third_task, class: Task do
    user
    date{Date.today+2}
    keep_content{ 'test_keep3' }
    keep_status{1}
    problem_content { 'test_problem3' }
    problem_status{1}
    try_content { 'test_try3' }
    try_status{1}
    created_at{Date.today+2}
  end
end
