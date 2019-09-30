Spree::UserSessionsController.class_eval do
  skip_before_action :detect_solidusfinery_single_sign_on, only: [:create], raise: false
  after_action :detect_solidusfinery_single_sign_on, only: [:create], raise: false

  private
  # This overrides what Solidus defines, so that we can get back to Refinery.
  def after_sign_in_path_for(resource)
    session["spree_user_return_to"] || super
  end
end
