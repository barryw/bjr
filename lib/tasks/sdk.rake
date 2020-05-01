# frozen_string_literal: true
require 'json'

sdks = [{ description: 'C# SDK', language: 'csharp', version_attr: 'packageVersion' },
        { description: 'Python SDK', language: 'python', version_attr: 'packageVersion' },
        { description: 'Javascript SDK', language: 'javascript', version_attr: 'projectVersion' },
        { description: 'Java SDK', language: 'java', version_attr: 'artifactVersion' },
        { description: 'Ruby SDK', language: 'ruby', version_attr: 'gemVersion' }]

desc 'Generate the client SDKs'
task 'generate:sdks' do |_t, _args|
  sdks.each do |sdk|
    print "Building #{sdk[:description]}"
    sh "rm -rf sdks/#{sdk[:language]}/*"
    sh "docker run -v ${PWD}/swagger/v1:/swagger -v ${PWD}/sdks:/config -v ${PWD}/sdks/#{sdk[:language]}:/gen " \
       "openapitools/openapi-generator-cli generate -o /gen -g #{sdk[:language]} -i /swagger/swagger.yaml " \
       "-c /config/#{sdk[:language]}.json"
  end
end

desc 'Bump the patch version of the SDKs'
task 'sdk:bumpver', [:position] => [:environment] do |_t, args|
  sdks.each do |sdk|
    position = args[:position]

    file = File.read("#{Rails.root}/sdks/#{sdk[:language]}.json")
    json = JSON.parse(file)
    cur_ver = json[sdk[:version_attr]]
    major, minor, patch = cur_ver.split('.')
    new_ver = ''
    case position
    when 'major'
      new_ver = "#{major.to_i + 1}.#{minor}.#{patch}"
    when 'minor'
      new_ver = "#{major}.#{minor.to_i + 1}.#{patch}"
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
