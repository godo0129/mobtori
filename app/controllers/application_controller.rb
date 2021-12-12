class ApplicationController < ActionController::Base

  def cafe
    render html: "モブトリへようこそ!"
  end

end