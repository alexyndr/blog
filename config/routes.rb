Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do  # Каждый маршрут по умолчанию будет содержать ЛОКАЛЬ
  # верхня строчка тоже самое что и ниже, только болие розширяемей
  #scope "(:locale)", locale: /ru|en/
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :posts
    root 'posts#index'
    resources :pictures, only: [:create, :destroy]
  end
end
