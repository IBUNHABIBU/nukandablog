class ContactFormController < ApplicationController
  def index
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      ContactFormMailer.contact_email(@message).deliver_now
      redirect_to root_path, notice: "Thank you for contact us! We will get back to you soon"
    else
      flash[:alert] = "Please fill in all fields."
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :body)
  end

end
