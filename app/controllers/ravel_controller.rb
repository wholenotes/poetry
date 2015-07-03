class RavelController < ApplicationController
  #before_filter :authenticate_user!, except: [:index]

  def index
    if detect_browser == "mobile_application"
      render "index_mobile"
    end
  end

  def warp_and_weft
    if detect_browser == "mobile_application"
      render "warp_and_weft_mobile"
    end
  end

  private
  MOBILE_BROWSERS = ["android", "ipod", "opera mini", "blackberry", "palm","hiptop","avantgo","plucker", "xiino","blazer","elaine", "windows ce; ppc;", "windows ce; smartphone;","windows ce; iemobile", "up.browser","up.link","mmp","symbian","smartphone", "midp","wap","vodafone","o2","pocket","kindle", "mobile","pda","psp","treo"]

  def detect_browser
    agent = request.headers["HTTP_USER_AGENT"].downcase
    MOBILE_BROWSERS.each do |m|
      return "mobile_application" if agent.match(m)
    end
    return "application"
  end
end