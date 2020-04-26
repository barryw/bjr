# frozen_string_literal: true

desc 'Generate the client SDKs'
task 'generate:sdks' do |_t, _args|
  sdks = [{ description: 'C# SDK', language: 'csharp' }, { description: 'Python SDK', language: 'python' },
          { description: 'Javascript SDK', language: 'javascript' }, { description: 'Java SDK', language: 'java' },
          { description: 'Ruby SDK', language: 'ruby' }]

  sdks.each do |sdk|
    print "Building #{sdk[:description]}"
    sh "rm -rf sdks/#{sdk[:language]}/*"
    sh "docker run -v ${PWD}/swagger/v1:/swagger -v ${PWD}/sdks:/config -v ${PWD}/sdks/#{sdk[:language]}:/gen " \
       "openapitools/openapi-generator-cli generate -o /gen -g #{sdk[:language]} -i /swagger/swagger.yaml " \
       "-c /config/#{sdk[:language]}.json"
  end
end
