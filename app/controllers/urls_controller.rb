class UrlsController < ApplicationController
  def create
    url = Url.new()
    url.source_url = params[:url]

    return render json: url.errors, status: 400 unless url.valid?

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
