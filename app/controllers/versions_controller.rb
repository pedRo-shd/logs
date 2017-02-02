class VersionsController < ApplicationController
  layout 'versions'

  def history
    @versions = PaperTrail::Version.order('created_at DESC')
  end

  def info_for_paper_trail
  # Save additional info
  { ip: request.remote_ip }
  end

  def user_for_paper_trail
    # Save the user responsible for the action
    user_signed_in? ? current_user.id : ''
  end
end
