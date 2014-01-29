class ContactMailer < ActionMailer::Base
  default to: "koplusima@gmail.com"
  def us(name, email, text)
    mail(from: email, subject: "Message from #{name}", body: text)
  end
end
