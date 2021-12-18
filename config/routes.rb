Rails.application.routes.draw do
  get 'google_calendar/read'
  get 'static_pages/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # root 'application#cafe'
    root 'static_pages#top'
  end