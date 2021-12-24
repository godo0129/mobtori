Rails.application.routes.draw do
  get 'galleries', to: 'galleries#top'
  get 'reports', to: 'reports#top'
  get 'seven_rules', to: 'seven_rules#top'
  get '/members', to: 'members#top'
  get 'spreadsheets/read'
  get 'schedules', to: 'calendars#read'
  get 'static_pages/top'
  get '/tweets', to:'tweets#new', as: 'new_tweet'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # root 'application#cafe'
    root 'top_pages#top'
    root 'static_pages#top'
  end