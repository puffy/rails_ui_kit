RailsUiKit::Engine.routes.draw do
  match '/ui(/:action)', controller: 'ui', via: [:get, :post]
end
