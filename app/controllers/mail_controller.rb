class MailController < ApplicationController
  def create
    ContactMailer.us(params[:name], params[:email], params[:text]).deliver
    head :ok, :content_type => 'text/html'
  end
end
