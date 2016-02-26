Rails.application.routes.draw do



#     concert_comments GET    /concerts/:concert_id/comments(.:format)          comments#index
#                      POST   /concerts/:concert_id/comments(.:format)          comments#create
#  new_concert_comment GET    /concerts/:concert_id/comments/new(.:format)      comments#new
# edit_concert_comment GET    /concerts/:concert_id/comments/:id/edit(.:format) comments#edit
#             concerts GET    /concerts(.:format)                               concerts#index
#                      POST   /concerts(.:format)                               concerts#create
#          new_concert GET    /concerts/new(.:format)                           concerts#new
#         edit_concert GET    /concerts/:id/edit(.:format)                      concerts#edit
#              concert GET    /concerts/:id(.:format)                           concerts#show
#                      DELETE /concerts/:id(.:format)                           concerts#destroy

  resources :concerts, only: [:index, :create, :new, :show, :edit, :destroy] do
    resources :comments, only: [:index, :create, :new, :edit]
  end  

end
