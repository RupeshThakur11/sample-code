# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new(account_sid, auth_token)

assistant_initiation_actions = @client.preview
  .understand
  .assistants('UAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
  .assistant_initiation_actions
  .update(initiation_actions: {
       'actions' => [
           {
               'say' => {
                   'speech' => 'Hello! how can I help you'
               }
           },
       ]
   })

puts assistant_initiation_actions.assistant_sid
