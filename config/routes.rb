# frozen_string_literal: true

Rails.application.routes.draw do
  root "welcome#index"
  namespace :admin do
      resources :users
      resources :courses
      resources :radio_image_text_questions
      resources :radio_questions
      resources :radio_image_questions
      resources :text_questions
      resources :image_questions
      resources :subjects
      resources :lessons
      resources :revisions
      resources :theories
      resources :practices

      root to: "users#index"
    end

  get "/:locale" => "welcome#index"

  scope ":locale", locale: /en|ru/ do
    devise_for :users, skip: :omniauth_callbacks
    resources :users, only: [:show]
    resources :lessons
    resources :subjects
    resources :courses
  end
  devise_for :users, only: :omniauth_callbacks, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  mount PolicyManager::Engine => "/policies"
end
