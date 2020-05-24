# frozen_string_literal: true

desc 'Build BJR Docker image'
task 'build:docker' do |_t, _args|
  version = File.read('.version').strip
  sh "docker build . -t barrywalker71/bjr:#{version}"
end

desc 'Push the BJR Docker image to DockerHub'
task 'build:docker:push' do |_t, _args|
  version = File.read('.version').strip
  sh "docker push barrywalker71/bjr:#{version}"
  sh "docker tag barrywalker71/bjr:#{version} barrywalker71/bjr:latest"
  sh "docker push barrywalker71/bjr:latest"
end
