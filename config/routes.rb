Flashcards::Application.routes.draw do
  root :to => "notebooks#index"
  resources :notebooks do
    resources :pages do
      get 'flashcards', :on => :collection
    end
  end
end