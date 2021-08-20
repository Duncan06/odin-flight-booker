class PassengerMailer < ApplicationMailer
    deafault from: 'notifications@example.com'

    def thank_you_email
        @passenger = params[:passenger]
        @url = 'http://example.com/login'
        mail(to: @passenger.email, subject: 'Thank you for booking a flight with us!')
    end
end
