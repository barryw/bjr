# frozen_string_literal: true

# Create the root user. This user has administrative control over the server
User.where(username: 'root').first_or_create do |user|
  user.is_root = true
  user.password = ENV.fetch('INITIAL_ROOT_PASSWORD', 'password1234')
  user.password_confirmation = ENV.fetch('INITIAL_ROOT_PASSWORD', 'password1234')
end

# Create the initial admin user. This is the first consumer
User.where(username: 'admin').first_or_create do |user|
  user.is_root = false
  user.password = ENV.fetch('INITIAL_ADMIN_PASSWORD', 'password1234')
  user.password_confirmation = ENV.fetch('INITIAL_ADMIN_PASSWORD', 'password1234')
end

u = User.where(username: 'admin').first

# Create some initial smart folders
Folder.create(name: I18n.t('folders.initial_set.successful_jobs'), user: u, expression: 'successful')
Folder.create(name: I18n.t('folders.initial_set.failed_jobs'), user: u, expression: 'failed')
Folder.create(name: I18n.t('folders.initial_set.running_jobs'), user: u, expression: 'running')
Folder.create(name: I18n.t('folders.initial_set.disabled_jobs'), user: u, expression: 'disabled')
Folder.create(name: I18n.t('folders.initial_set.example_jobs'), user: u, expression: 'tags:example')

job1 = Job.create(name: 'Welcome to BJR', cron: '*/5 * * * *', command: 'echo Welcome to BJR', user: u)
job1.tag('example')

job2 = Job.create(name: 'Failing Job', cron: '*/5 * * * *', command: 'oops', user: u)
job2.tag('example,failing')

job3 = Job.create(name: 'Disabled Job', cron: '*/5 * * * *', command: 'echo I wont run', user: u, enabled: false)
