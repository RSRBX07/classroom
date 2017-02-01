class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_i18n_locale

  def set_i18n_locale
    I18n.locale= :fr
  end
end
