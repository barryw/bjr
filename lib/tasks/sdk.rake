# frozen_string_literal: true

desc 'Generate the client SDKs'
task 'generate:sdks' do |_t, _args|
  #sh 'java -jar bin/swagger-codegen-cli.jar generate -h'
  print 'Building C# SDK'
  sh 'rm -rf sdks/csharp/*'
  sh 'java -jar bin/swagger-codegen-cli.jar generate -l csharp -i swagger/v1/swagger.yaml -o sdks/csharp --api-package BJR.Api --model-package BJR.Model --invoker-package BJR && chmod +x sdks/csharp/build.sh && cd sdks/csharp && ./build.sh && cd ../../'

  print 'Building Python SDK'
  sh 'rm -rf sdks/python/*'
  sh 'java -jar bin/swagger-codegen-cli.jar generate -l python -i swagger/v1/swagger.yaml -o sdks/python --api-package BJR.Api --model-package BJR.Model --invoker-package BJR'

  print 'Building Java SDK'
  sh 'rm -rf sdks/java/*'
  sh 'java -jar bin/swagger-codegen-cli.jar generate -l java -i swagger/v1/swagger.yaml -o sdks/java --api-package BJR.Api --model-package BJR.Model --invoker-package BJR'

  print 'Building Javascript SDK'
  sh 'rm -rf sdks/js/*'
  sh 'java -jar bin/swagger-codegen-cli.jar generate -l javascript -i swagger/v1/swagger.yaml -o sdks/js --api-package BJR.Api --model-package BJR.Model --invoker-package BJR'

end
