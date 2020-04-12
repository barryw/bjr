# frozen_string_literal: true

desc 'Generate the client SDKs'
task 'generate:sdks' do |_t, _args|
  sdks = [{description: 'C# SDK', language: 'csharp'}, {description: 'Python SDK', language: 'python'},
          {description: 'Javascript SDK', language: 'javascript'}, {description: 'Java SDK', language: 'java'}]

  sdks.each do |sdk|
    print "Building #{sdk[:description]}"
    sh "rm -rf sdks/#{sdk[:language]}/*"
    sh "java -jar bin/swagger-codegen-cli.jar generate -l #{sdk[:language]} -i swagger/v1/swagger.yaml -o sdks/#{sdk[:language]} --api-package Api --model-package Model --invoker-package BJR -c sdks/#{sdk[:language]}.json"
  end

end
