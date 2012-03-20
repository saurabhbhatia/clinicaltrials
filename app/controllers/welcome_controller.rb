class WelcomeController < ApplicationController
  skip_authorization_check

  def index
   @webcasts = Webcast.last
   @iraas_journal = Download.where("download_type = 'iRaas Journal'").last
   @updates = Update.order("created_at desc").last(5)
   @banners = Banner.all
  end

  def about_us
  end

  def terms_of_use
  end

  def membership_benefits
  end
  
  def disclaimer
  end
end
