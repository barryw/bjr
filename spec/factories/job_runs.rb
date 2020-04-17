# frozen_string_literal: true

FactoryBot.define do
  factory :job_run, class: JobRun do
  end

  factory :successful_job_run, class: JobRun do
    success { true }
    return_code { 0 }
    error_message { nil }
    stdout { 'Hello, World!' }
    stderr { nil }
  end

  factory :failed_job_run, class: JobRun do
    success { false }
    return_code { 1 }
    error_message { 'Failed to write Hello, World!' }
    stdout { nil }
    stderr { 'Everybody wants to rule the world!' }
  end
end
