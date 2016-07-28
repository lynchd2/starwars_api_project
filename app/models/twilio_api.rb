require 'twilio-ruby'

class TwilioApi
  attr_reader :client

  def initialize
    auth_token= Figaro.env.twilio_auth_token
    account_sid = Figaro.env.twilio_sid
    @client = Twilio::REST::Client.new account_sid, auth_token
  end

  def send_message(number, message)
  #   @client.messages.create(
  #   :from => "+13108505684",
  #   :to => to_phone,
  #   :body => message,
  #   :media_url => 'https://s-media-cache-ak0.pinimg.com/736x/51/aa/c8/51aac8e5328790194fc4220dfd88c1f7.jpg')

  begin

    @client.account.messages.create({
      from: '+17324106586',
      to: number,
      body: message
    })
  rescue Twilio::REST::RequestError => e
    puts e.message
  end
   end

end