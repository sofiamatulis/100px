Rails.application.routes.draw do
  root 'photos#index'


   get '/auth/:provider/callback', to: 'sessions#create'

   delete '/logout', to: 'sessions#destroy'

   get   '/like/:picture', to: 'photos#like'


   # when going to http://localhost:3000/auth/500px, bring to sessions create



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
