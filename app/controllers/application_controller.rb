class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true    # что это за строка?
  add_flash_types :success, :danger, :info, :warning  # добавляем нужные типы бутстраповских флешов

  before_action :set_locale  # перед любым ЕКШИНОМ

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    # устанавливаем  locale  из параметров, или берем дефолтную локаль
  end

  def default_url_options(options = {}) #метод для добавления locale до входящих параметров

     {locale:I18n.locale}.merge options

    # хеш ЛОКАЛЕ мерджим в опшинс!

  end
end
