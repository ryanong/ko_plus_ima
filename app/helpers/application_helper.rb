module ApplicationHelper
  ACTIVITY_EMAIL = "KOplusIMAactivitiesczar@gmail.com"
  def mail_to_activities(subject = '')
    mail_to(ACTIVITY_EMAIL, ACTIVITY_EMAIL, subject: subject)
  end
end
