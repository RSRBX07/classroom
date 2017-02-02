class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_i18n_locale, :set_last_url

  def set_i18n_locale
    I18n.locale = cookies[:language] || I18n.default_locale
  end

  def set_last_url
    session[:previous_request_url] = session[:current_request_url]
    session[:current_request_url] = request.url
  end

  def change_language
    cookies[:language] = { :value => params[:lang]}
    redirect_to session[:previous_request_url]
  end
end
