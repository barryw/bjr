=begin
#BJR API V1

#API specification for the BJR job server.

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for BJR::FoldersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FoldersApi' do
  before do
    # run before each test
    @api_instance = BJR::FoldersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FoldersApi' do
    it 'should create an instance of FoldersApi' do
      expect(@api_instance).to be_instance_of(BJR::FoldersApi)
    end
  end

  # unit tests for create_folder
  # Create a new Folder
  # Create a new Folder
  # @param name 
  # @param expression 
  # @param [Hash] opts the optional parameters
  # @return [SingleFolderMessage]
  describe 'create_folder test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_folder
  # Delete an existing folder
  # Delete an existing folder
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [SingleFolderMessage]
  describe 'delete_folder test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_folder
  # Return a single folder
  # Return a single folder
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [SingleFolderMessage]
  describe 'get_folder test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_folder_jobs
  # Return list of jobs in a folder
  # Return list of jobs in a folder
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :per_page 
  # @option opts [Integer] :page 
  # @return [JobArrayMessage]
  describe 'get_folder_jobs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_folders
  # Return paginated list of all folders
  # Return paginated list of all folders
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :per_page 
  # @option opts [Integer] :page 
  # @return [FolderArrayMessage]
  describe 'get_folders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_folder
  # Update an existing folder
  # Update an existing folder
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name 
  # @option opts [String] :expression 
  # @return [SingleFolderMessage]
  describe 'update_folder test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
