Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope "(:locale)", locale: /en|zh-TW/ do
    root 'landing#index'

    get "/about", to: "landing#about"
    get "/facility", to: "landing#facility"

    resources :traffics
    resources :facilities
    resources :news
    resources :reservs do
      resources :rooms
    end
    resources :food

  end

  namespace :admin do
    root :to =>  'news#index'
    resource :password, only: [:edit, :update]
    resources :dash
    resources :pages
    resources :food do
      member do
        get 'images'
      end
    end
    resource :food_images, only: [:edit, :update] do
      member do
        get 'images'
      end
    end
    resources :spots do
      member do
        get 'images'
      end
    end
    resources :news do
      member do
        get 'images'
      end
    end

    resources :banners do
      member do
        get 'images'
        get 'section1_images'
        get 'section2_images'
        get 'section3_images'
      end
    end

    resources :stores do

      member do
        get 'cover_images'
        get 'traffic_images'
      end
      resources :traffic

      resources :rooms do
        member do
          get 'images'
          get 'cover_images'
        end
        get 'set_seq', on: :collection
      end

      resources :spots do
        member do
          get 'images'
        end
      end
    end

    resources :images
    resource :setting, only: [:show, :update]
  end
end
