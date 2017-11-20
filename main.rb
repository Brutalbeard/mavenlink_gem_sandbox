require 'mavenlink'
require 'awesome_print'
require 'dotenv/load'

ap 'starting'

client = Mavenlink::Client.new(oauth_token: ENV['oauthToken']) # just the token for API. found in .config.rb

Mavenlink.oauth_token = ENV['oauthToken']

# Need to tidy up. Been copy pasting stuff all over the place. Going to make this more legible from the top down. 

# # example of collecting all the workspaces: 
# res = client.workspaces.page(1).per_page(200)
# res.each do |res| ap res end

# # example of listing out all available custom fields
# res = client.custom_fields.include('choices').page(1).per_page(200)
# res.each do |res| ap res end

# # example of listing out just one custom field, based on it's ID
# res = client.custom_fields.only(265355).include('choices')
# res.each do |res| ap res end

# # get all workspace activity posts
# res = client.posts.filter(workspace_id: 18024165).page(1).per_page(200)
# res.each do |res| ap res end

# # getting all users (including clients) on any account that the logged in admin (you the programmer) has had contact with
# res = client.users.page(1).per_page(200)
# res.each do |res| ap res end

# # getting ringcentral users (excluding clients) on our account only
# res = client.users.filter(on_my_account: true).page(1).per_page(200)
# res.each do |res| ap res end

# # get all the custom field values that are on the account, for a specific field. IE, show me all the UIDs that have been entered
# res = client.custom_field_values.filter(subject_type: 'Workspace', with_custom_field_id: 270495).page(1).per_page(200)
# res.each do |res| ap res end

# # input a new value, in a custom field (where no value has already been set! subject ID is the workspace ID
# res = client.custom_field_values.new(subject_type: 'Workspace', subject_id: 1234, custom_field_id: 4321, value: 'Hello world!')
# res.save

# # get custom field sets. note, this doesn't have a mavenlink_gem model, and has to be requested in native Faraday
# res = client.get('/api/v1/custom_field_sets.json')
# res.each do |res| ap res end

# # make a new project
# workspace = Mavenlink::Workspace.new(
#     title: 'Dev Test through API - Will be Deleted', 
#     creator_role: 'maven', 
#     budgeted: true,
#     price: '10350', # in USD unless a different currency is specified
#     client_role_name: 'Customer Company Name',
#     consultant_role_name: 'My Company Name'
# )
# res = workspace.save
