# frozen_string_literal: true

desc 'Build BJR Docker image'
task 'build:docker' do |_t, _args|
  sh 'docker build . -t barrywalker71/bjr:latest'
end

desc 'Push the BJR Docker image to DockerHub'
task 'build:docker:push' do |_t, _args|
  sh 'docker push barrywalker71/bjr:latest'
end
