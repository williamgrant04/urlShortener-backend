class UrlsController < ApplicationController
  require "securerandom"

  def create
    url = Url.new()
    url.identifier = SecureRandom.urlsafe_base64(10)
    url.source_url = params[:url]

    if url.save
      render json: url, status: 200
    else
      render status: 500
    end
  end
end
