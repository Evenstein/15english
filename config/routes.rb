# frozen_string_literal: true

Rails.application.routes.draw do
  root "welcome#index"
  namespace :admin do
      resources :users
      resources :courses
      resources :subjects
      resources :lessons
      resources :revisions
      resources :theories
      resources :practices
      resources :radio_image_text_questions
      resources :radio_image_questions
      resources :image_questions
      resources :radio_questions
      resources :text_questions
      root to: "users#index"
    end

  get "/:locale" => "welcome#index"

  scope ":locale", locale: /en|ru/ do
    devise_for :users
    resources :users, only: [:show]
    resources :lessons
    resources :subjects
    resources :courses
  end
end
