module ApplicationHelper
  ACTIVITY_EMAIL = "KOplusIMAactivitiesczar@gmail.com"
  def mail_to_activities(subject = '')
    mail_to(ACTIVITY_EMAIL, ACTIVITY_EMAIL, subject: subject)
  end

  def link_to(text, address, options ={})
    options[:target] = "_blank" if address[0..3] == "http"
    super(text, address, options)
  end
end
