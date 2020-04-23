# frozen_string_literal: true

desc 'Generate the client SDKs'
task 'generate:sdks' do |_t, _args|
  sdks = [{ description: 'C# SDK', language: 'csharp' }, { description: 'Python SDK', language: 'python' },
          { description: 'Javascript SDK', language: 'javascript' }, { description: 'Java SDK', language: 'java' }]

  sdks.each do |sdk|
    print "Building #{sdk[:description]}"
    sh "rm -rf sdks/#{sdk[:language]}/*"
    sh "docker run -v ${PWD}/swagger/v1:/swagger -v ${PWD}/sdks:/config -v ${PWD}/sdks/#{sdk[:language]}:/gen -w " \
       "/gen -e GEN_DIR=/gen swaggerapi/swagger-codegen-cli-v3:3.0.19 generate -l #{sdk[:language]} -i /swagger/swagger.yaml " \
       "-o /gen --api-package Api --model-package Model --invoker-package BJR -c /config/#{sdk[:language]}.json"
  end
end
