Rails.application.routes.draw do
  get 'spreadsheets/read'
  get 'calendars/read'
  get 'static_pages/top'
  get '/tweets', to:'tweets#new', as: 'new_tweet'
<<<<<<< HEAD
 # この行を追加
=======
>>>>>>> fb963b9acbd69b1453ab1a8fb7b98c7eac5a949c
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # root 'application#cafe'
    root 'static_pages#top'
  end