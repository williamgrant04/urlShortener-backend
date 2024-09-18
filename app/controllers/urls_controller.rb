class UrlsController < ApplicationController
  require "securerandom"

  def create
    url = Url.new()
    url.identifier = SecureRandom.urlsafe_base64(6)
    url.source_url = params[:url]

    # TODO: Add a check to see if the URL is valid, if not return a 400 status code with an error message "Invalid URL" or something

    if url.save
      render json: url, status: 200
    else
      render status: 500
    end
  end

  def show
    url = Url.find_by(identifier: params[:identifier])
    url.click_count += 1
    url.save!

    if url
      render json: url, status: 200
    else
      render status: 404
    end
  end
end
