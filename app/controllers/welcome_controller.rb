class WelcomeController < ApplicationController
  skip_authorization_check

  def index
   @webcasts = Webcast.last
   @iraas_journal = Download.where("download_type = 'iRaas Journal'").last
   @updates = Update.order("created_at desc").last(5)
   @banners = Banner.all
   @client = YouTubeIt::Client.new(:dev_key => "AI39si5KGPg8rhKLBfmeukit2tCSP_B9lT8igiNICbrbgUXQoAdYGvsyCGCmO1wGnr1OW4bDRv-ESolwk-rdBNIAgVTL9VYaEA")
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
