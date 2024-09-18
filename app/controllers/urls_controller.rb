class UrlsController < ApplicationController
  require "securerandom"

  def create
    url = Url.new()
    url.uuid = SecureRandom.urlsafe_base64(10)
    url.shortened_url = params[:url]
    
    if url.save
      render json: url, status: 200
    else
      render status: 500
    end
  end
end
