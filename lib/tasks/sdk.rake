# frozen_string_literal: true

require 'json'

sdks = [{ description: 'C# SDK', language: 'csharp', version_attr: 'packageVersion' },
        { description: 'Python SDK', language: 'python', version_attr: 'packageVersion' },
        { description: 'Javascript SDK', language: 'javascript', version_attr: 'projectVersion' },
        { description: 'Java SDK', language: 'java', version_attr: 'artifactVersion' },
        { description: 'Ruby SDK', language: 'ruby', version_attr: 'gemVersion' }]

desc 'Do everything needed to update the SDKs. Specify position as patch, minor or major to bump the SDK versions.'
task 'sdk:all', [:position] => [:environment] do |_t, _args|
  Rake::Task["spec"].invoke
  Rake::Task["rswag"].invoke
  Rake::Task["sdk:bumpver"].invoke(_args[:position])
  Rake::Task["sdk:generate"].invoke
end

desc 'Generate the client SDKs'
task 'sdk:generate' do |_t, _args|
  sdks.each do |sdk|
    print "Building #{sdk[:description]}"
    sh "rm -rf sdks/#{sdk[:language]}/*"
    sh "docker run -v ${PWD}/swagger/v1:/swagger -v ${PWD}/sdks:/config -v ${PWD}/sdks/#{sdk[:language]}:/gen " \
       "openapitools/openapi-generator-cli generate -o /gen -g #{sdk[:language]} -i /swagger/swagger.yaml " \
       "-c /config/#{sdk[:language]}.json"
  end
end

desc 'Bump the patch version of the SDKs. Specify position as patch, minor or major to bump the SDK versions.'
task 'sdk:bumpver', [:position] => [:environment] do |_t, _args|
  sdks.each do |sdk|
    position = _args[:position]

    file = File.read("#{Rails.root}/sdks/#{sdk[:language]}.json")
    json = JSON.parse(file)
    cur_ver = json[sdk[:version_attr]]
    major, minor, patch = cur_ver.split('.')
    new_ver = ''
    case position
    when 'major'
      new_ver = "#{major.to_i + 1}.0.0"
    when 'minor'
      new_ver = "#{major}.#{minor.to_i + 1}.0"
    when 'patch'
      new_ver = "#{major}.#{minor}.#{patch.to_i + 1}"
    else
      raise 'position must be major, minor or patch'
    end
    puts "Bumping #{sdk[:description]} patch version from #{cur_ver} -> #{new_ver}"
    json[sdk[:version_attr]] = new_ver
    File.write("#{Rails.root}/sdks/#{sdk[:language]}.json", JSON.pretty_generate(json))
  end
end
