class ApplicationController < ActionController::Base

  def cafe
    render html: "mobtoriへようこそ!"
  end

end