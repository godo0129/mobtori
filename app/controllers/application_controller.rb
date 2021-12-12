class ApplicationController < ActionController::Base

  def cafe
    render html: "モブトリのサイトですよ"
    print("Hello, Ruby")
  end

end