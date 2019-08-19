class TwilioTextMessenger
  attr_reader :message

  def initialize(message, recipient)
    @message = message
    @recipient = recipient
  end

  def call

    client = Twilio::REST::Client.new
    client.messages.create({
      from: Rails.application.credentials.twilio_phone_number,
      to: @recipient,
      body: message
    })
  end
end