class Versions::SearchController < ApplicationController
  layout "versions"

  def logs
    @versions = Version.where(event: params[:q])
  end
end
