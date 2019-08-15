Rails.application.routes.draw do

  resources :cocktails, only: [:index, :create, :new, :show] do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end






# collection do
#       get 'top' #/cocktails/top
#     end                                <>>>>>> explication ticket diff member et collection
#     member do
#       get 'maker' #/cocktails/:id/maker
#     end
#   end
