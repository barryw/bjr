# frozen_string_literal: true

desc 'Build BJR Docker image'
task 'build:docker' do |_t, _args|
  version = File.read('.version').strip
  sh "docker build . -t barrywalker/bjr:#{version}"
end

desc 'Push the BJR Docker image to DockerHub'
task 'build:docker:push' do |_t, _args|
  version = File.read('.version').strip
  sh "docker push barrywalker/bjr:#{version}"
  sh "docker tag barrywalker/bjr:#{version} barrywalker/bjr:latest"
  sh 'docker push barrywalker/bjr:latest'
end
