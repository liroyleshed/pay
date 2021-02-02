# frozen_string_literal: true

Pay::Engine.routes.draw do
  resources :payments, only: [:show], module: :pay
  post "webhooks/stripe", to: "pay/webhooks/stripe#event"
  post "webhooks/braintree", to: "pay/webhooks/braintree#create"
  post "webhooks/paddle", to: "pay/webhooks/paddle#create"
end
