# frozen_string_literal: true

require 'json'

sdks = [{ description: 'C# SDK', language: 'csharp', version_attr: 'packageVersion' },
        { description: 'Python SDK', language: 'python', version_attr: 'packageVersion' },
        { description: 'Javascript SDK', language: 'javascript', version_attr: 'projectVersion' },
        { description: 'Java SDK', language: 'java', version_attr: 'artifactVersion' },
        { description: 'Ruby SDK', language: 'ruby', version_attr: 'gemVersion' },
        { description: 'C# .NET Core', language: 'csharp-netcore', version_attr: 'packageVersion' },
        { description: 'Rust SDK', language: 'rust', version_attr: 'packageVersion' },
        { description: 'Go SDK', language: 'go', version_attr: 'packageVersion' }]

desc 'Do everything needed to update the SDKs. Pass in the version to set them all to.'
task 'sdk:all', [:version] => [:environment] do |_t, args|
  Rake::Task['spec'].invoke
  Rake::Task['rswag'].invoke
  Rake::Task['sdk:setver'].invoke(args[:version])
  Rake::Task['sdk:generate'].invoke
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

desc 'Set the version on all of the SDKs.'
task 'sdk:setver', [:version] => [:environment] do |_t, args|
  sdks.each do |sdk|
    version = args[:version]

    file = File.read("#{Rails.root}/sdks/#{sdk[:language]}.json")
    json = JSON.parse(file)

    puts "Setting #{sdk[:description]} version as #{version}"
    json[sdk[:version_attr]] = version
    File.write("#{Rails.root}/sdks/#{sdk[:language]}.json", JSON.pretty_generate(json))
  end
end
