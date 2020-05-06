class HomeController < ApplicationController
  def index
    @inquiry = Inquiry.new
    render :action => 'index'
  end

  def inquiry
    @inquiry = Inquiry.new(name: contactForm_params[:name], email: contactForm_params[:email], message: contactForm_params[:contactForm__message])    
    InquiryMailer.received_email(@inquiry).deliver
    flash[:notice] = 'メッセージが送信されました'
    redirect_to action: :index
  end

  private
  def contactForm_params
    params.permit(:name, :email, :contactForm__message)
  end
end
