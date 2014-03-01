module ApplicationHelper
  ACTIVITY_EMAIL = "KOplusIMAactivitiesczar@gmail.com"
  def mail_to_activities(subject = '')
    mail_to(ACTIVITY_EMAIL, ACTIVITY_EMAIL, subject: subject)
  end

  def link_to(*args)
    if controller.class.name.deconstantize == "admin"
      super
    else
      if args[1].is_a?(String)
        args[2] ||= {}
        args[2][:target] = "_blank" if args[1][0..3] == "http"
      end
      super(*args)
    end
  end
end
