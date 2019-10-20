Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#about_us"

  controller :home do
  	get :about_us, action: 'about_us'
  	get :services, action: 'services'
  	get :gallery, action: 'gallery'
  	get :statistics, action: 'statistics'
  	get :news_and_events, action: 'news_and_events'
  	get :contact, action: 'contact'
  end

end