# frozen_string_literal: true

require 'rails_helper'

RSpec.configure do |config|
  # Specify a root folder where Swagger JSON files are generated
  # NOTE: If you're using the rswag-api to serve API descriptions, you'll need
  # to ensure that it's configured to serve Swagger from the same folder
  config.swagger_root = Rails.root.join('swagger').to_s

  # Define one or more Swagger documents and provide global metadata for each one
  # When you run the 'rswag:specs:swaggerize' rake task, the complete Swagger will
  # be generated at the provided relative path under swagger_root
  # By default, the operations defined in spec files are added to the first
  # document below. You can override this behavior by adding a swagger_doc tag to the
  # the root example_group in your specs, e.g. describe '...', swagger_doc: 'v2/swagger.json'
  config.swagger_docs = {
    'v1/swagger.yaml' => {
      openapi: '3.0.1',
      info: {
        title: 'BJR API V1',
        version: 'v1'
      },
      components: {
        schemas: {
          SingleJobRun: {
            type: :object,
            properties: {
              id: { type: :integer, description: 'The object\'s primary key. This uniquely identifies the object in the system.' },
              success: { type: :boolean, description: 'Whether the run was successful or not.' },
              return_code: { type: :integer, description: 'The return code that the command exited with. 0 means success.' },
              error_message: { type: :string, description: 'If the run failed, the error message that was returned.', nullable: true },
              stdout: { type: :string, description: 'The text written to STDOUT as part of the job.', nullable: true },
              stderr: { type: :string, description: 'The text written to STDERR as part of the job.', nullable: true },
              start_time: { type: :string, format: 'date-time', description: 'The date and time that the run started.' },
              end_time: { type: :string, format: 'date-time', description: 'The date and time that the run ended.' },
              job_id: { type: :integer, description: 'The job that the run is associated with.' },
              created_at: { type: :string, format: 'date-time', description: 'The date and time that the run record was created in UTC.' },
              updated_at: { type: :string, format: 'date-time', description: 'The date and time that the run record was last updated in UTC.' }
            }
          },
          JobRunArray: {
            type: :array,
            items: {
              type: :object,
              "$ref": '#/components/schemas/SingleJobRun'
            }
          },
          AuthIn: {
            type: :object,
            properties: {
              username: { type: :string, description: 'The username of the user to authenticate as', required: true },
              password: { type: :string, description: 'The password of the user to authenticate as', required: true }
            }
          },
          AuthOut: {
            type: :object,
            properties: {
              auth_token: { type: :string, description: 'The JWT authentication token. This must be passed in the Authorization header on subsequent requests.' },
              message: { type: :string, description: 'If authentication failed, this will contain the reason why.' },
              is_error: { type: :boolean, description: 'This will be true if the authentication was successful, and false if not.' }
            }
          },
          UserNewIn: {
            type: :object,
            properties: {
              username: { type: :string, description: "The new user's username. Must be unique." },
              password: { type: :string, description: "The new user's password." },
              password_confirmation: { type: :string, description: "The new user's password confirmation. Must match 'password'." }
            }
          },
          UserUpdateIn: {
            type: :object,
            properties: {
              password: { type: :string, description: "The new user's password." },
              password_confirmation: { type: :string, description: "The new user's password confirmation. Must match 'password'." }
            }
          },
          SingleUser: {
            type: :object,
            properties: {
              id: { type: :integer, description: 'The object\'s primary key. This uniquely identifies the object in the system.' },
              username: { type: :string },
              created_at: { type: :string, format: 'date-time', description: 'The UTC date and time that the object was created.' },
              updated_at: { type: :string, format: 'date-time', description: 'The UTC date and time that the object was last modified.' }
            }
          },
          UserArray: {
            type: :array,
            items: {
              type: :object,
              "$ref": '#/components/schemas/SingleUser'
            }
          },
          UserOut: {
            type: :object,
            properties: {
              message: { type: :string, description: 'The status message returned from the API call.' },
              is_error: { type: :boolean, description: 'True if there was an error performing the API call.' },
              object_type: { type: :string, description: 'The type of object being returned.' },
              status_code: { type: :integer, description: 'The HTTP status code returned.' },
              object: {
                type: :object,
                "$ref": '#/components/schemas/SingleUser'
              }
            }
          },
          SingleJob: {
            type: :object,
            properties: {
              id: { type: :integer, description: 'The object\'s primary key. This uniquely identifies the object in the system.' },
              name: { type: :string, description: 'The name of the job.' },
              cron: { type: :string, description: 'The cron expression for the job.' },
              enabled: { type: :boolean, description: 'Whether the job is enabled or not.' },
              command: { type: :string, description: 'The command that is executed when the job fires.' },
              next_run: { type: :string, description: 'The date and time of the job\'s next run.' },
              running: { type: :boolean, description: 'Whether the job is currently running.' },
              timezone: { type: :string, description: 'The timezone that the job will run in.' },
              tags: { type: :array, description: 'An array of tags associated with the job.', items: { type: :string } },
              created_at: { type: :string, format: 'date-time', description: 'The UTC date and time that the object was created.' },
              updated_at: { type: :string, format: 'date-time', description: 'The UTC date and time that the object was last modified.' }
            }
          },
          JobArray: {
            type: :array,
            items: {
              type: :object,
              "$ref": '#/components/schemas/SingleJob'
            }
          },
          JobIn: {
            type: :object,
            properties: {
              name: { type: :string, description: 'The new name of the job. Must be unique.', required: true },
              cron: { type: :string, description: 'The new cron expression for the job.', required: true },
              command: { type: :string, description: 'The command to run when the job fires.', required: true },
              timezone: { type: :string, description: 'The timezone to run the job in.', required: false },
              enabled: { type: :boolean, description: 'Is the job enabled by default?', required: false },
              tags: { type: :string, description: 'A comma-separated list of tags to associate with this job. You can search jobs by their tags.', required: false }
            }
          },
          JobOut: {
            type: :object,
            properties: {
              message: { type: :string, description: 'The status message returned from the API call.' },
              is_error: { type: :boolean, description: 'True if there was an error performing the API call.' },
              object_type: { type: :string, description: 'The type of object being returned.' },
              status_code: { type: :integer, description: 'The HTTP status code returned.' },
              object: {
                type: :object,
                "$ref": '#/components/schemas/SingleJob'
              }
            }
          }
        },
        securitySchemes: {
          bearerAuth: {
            scheme: 'bearer',
            type: 'http',
            bearerFormat: 'JWT'
          }
        }
      },
      paths: {}
    }
  }

  # Specify the format of the output Swagger file when running 'rswag:specs:swaggerize'.
  # The swagger_docs configuration option has the filename including format in
  # the key, this may want to be changed to avoid putting yaml in json files.
  # Defaults to json. Accepts ':json' and ':yaml'.
  config.swagger_format = :yaml
end
