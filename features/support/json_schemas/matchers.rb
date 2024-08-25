RSpec::Matchers.define :match_response_schema do |schema|
  match do |response|
    schema_directory = "#{Dir.pwd}/json_schemas/"
    schema_path = "#{schema_directory}#{schema}.json"
    JSON::Validator.validate!(schema_path, response)
  end
end
