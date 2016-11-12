Rails.application.routes.draw do
  root 'photos#index'

  get '/auth/:provider/callback', to: 'sessions#create'
  # when going to http://localhost:3000/auth/500px, bring to sessions create

  delete '/logout', to: 'sessions#destroy'

  get   '/like/:picture', to: 'photos#like'

  get '/fresh', to: 'photos#fresh'

  get '/editors', to: 'photos#editors'

  get '/upcoming', to: 'photos#upcoming'








end
