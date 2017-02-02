class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_i18n_locale

  def set_i18n_locale
    I18n.locale = cookies[:language] || I18n.default_locale
  end

  def change_language
    cookies[:language] = { :value => params[:lang]}
    redirect_to students_path
  end
end
