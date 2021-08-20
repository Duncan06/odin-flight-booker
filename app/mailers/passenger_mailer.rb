class PassengerMailer < ApplicationMailer
    default from: 'notifications@example.com'

    def thank_you_email
        @booking = Booking.find(params[:booking_id])
        @url = 'http://example.com/login'
        mail(to: @booking.passengers.pluck(:email),
         subject: 'Thank you for booking a flight with us!')
    end
end
