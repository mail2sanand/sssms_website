Rails.application.routes.draw do
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#about_us"

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  controller :backend do
    post :change_stats, action: 'change_stats'
    get :backend, action: 'index'
  end

  controller :home do
  	get :about_us, action: 'about_us'
  	get :services, action: 'services'
  	get :gallery, action: 'gallery'
  	get :impact, action: 'impact'
  	get :statistics, action: 'statistics'
  	get :news_and_events, action: 'news_and_events'
  	get :contact, action: 'contact'
  end

end
