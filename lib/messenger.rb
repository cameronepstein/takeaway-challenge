
class Messenger

 require 'twilio-ruby'
 
   def send
    account_sid = 'AC355ef7160172a7f411b8f0faaebbb36b'
    auth_token = 'e1a6a7af3c2547a6cf9eb4a1a692b796'
    
    @client = Twilio::REST::Client.new account_sid, auth_token
    @client.account.messages.create({
    :from => '+441354810019',
    :to => '+447900890316',
    :body =>
    "Order received. Estimated delivery_time #{delivery_time}. Thank you."
    })
  end
  
  private
  def delivery_time
    (Time.now + 3600).strftime("%H:%M")
  end

end

