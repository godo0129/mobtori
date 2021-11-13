class ApplicationController < ActionController::Base

  def cafe
    render html: "cafe_appへようこそ!"
  end

end