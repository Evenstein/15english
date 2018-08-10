# frozen_string_literal: true

Rails.application.routes.draw do
  root "welcome#index"
  namespace :admin do
      resources :users
      resources :courses
      resources :subjects
      resources :lessons
    
      root to: "users#index"
    end

  get "/:locale" => "welcome#index"

  scope ":locale", locale: /en|ru/ do
    devise_for :users
    resources :users, only: [:show]
    resources :lessons
    resources :subjects
    resources :courses
    resources :cards
  end
end
