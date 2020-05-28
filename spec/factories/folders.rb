FactoryBot.define do
  factory :folder do
    name { 'Test Folder' }
  end

  factory :success, class: Folder do
    name { 'Successful job' }
    expression { 'success' }
  end

  factory :failed, class: Folder do
    name { 'Failed job' }
    expression { 'failed' }
  end
end
