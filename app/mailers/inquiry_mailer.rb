class InquiryMailer < ApplicationMailer
  default from: "example@example.com"
  default to: ENV['SEND_MAIL'] 

  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => '【要確認】お客様からお問い合わせがありました。') 
  end

end