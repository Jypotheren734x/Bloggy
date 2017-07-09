                  Prefix Verb   URI Pattern                                       Controller#Action
               edit_user GET    /users/:id/edit(.:format)                         users#edit
                    user GET    /users/:id(.:format)                              users#show
                         PATCH  /users/:id(.:format)                              users#update
                         PUT    /users/:id(.:format)                              users#update
              home_index GET    /home/index(.:format)                             home#index
             home_search GET    /home/search(.:format)                            home#search
           post_comments GET    /posts/:post_id/comments(.:format)                comments#index
                         POST   /posts/:post_id/comments(.:format)                comments#create
        new_post_comment GET    /posts/:post_id/comments/new(.:format)            comments#new
       edit_post_comment GET    /posts/:post_id/comments/:id/edit(.:format)       comments#edit
            post_comment GET    /posts/:post_id/comments/:id(.:format)            comments#show
                         PATCH  /posts/:post_id/comments/:id(.:format)            comments#update
                         PUT    /posts/:post_id/comments/:id(.:format)            comments#update
                         DELETE /posts/:post_id/comments/:id(.:format)            comments#destroy
                   posts GET    /posts(.:format)                                  posts#index
                         POST   /posts(.:format)                                  posts#create
                new_post GET    /posts/new(.:format)                              posts#new
               edit_post GET    /posts/:id/edit(.:format)                         posts#edit
                    post GET    /posts/:id(.:format)                              posts#show
                         PATCH  /posts/:id(.:format)                              posts#update
                         PUT    /posts/:id(.:format)                              posts#update
                         DELETE /posts/:id(.:format)                              posts#destroy
        comment_comments GET    /comments/:comment_id/comments(.:format)          comments#index
                         POST   /comments/:comment_id/comments(.:format)          comments#create
     new_comment_comment GET    /comments/:comment_id/comments/new(.:format)      comments#new
    edit_comment_comment GET    /comments/:comment_id/comments/:id/edit(.:format) comments#edit
         comment_comment GET    /comments/:comment_id/comments/:id(.:format)      comments#show
                         PATCH  /comments/:comment_id/comments/:id(.:format)      comments#update
                         PUT    /comments/:comment_id/comments/:id(.:format)      comments#update
                         DELETE /comments/:comment_id/comments/:id(.:format)      comments#destroy
                comments GET    /comments(.:format)                               comments#index
                         POST   /comments(.:format)                               comments#create
             new_comment GET    /comments/new(.:format)                           comments#new
            edit_comment GET    /comments/:id/edit(.:format)                      comments#edit
                 comment GET    /comments/:id(.:format)                           comments#show
                         PATCH  /comments/:id(.:format)                           comments#update
                         PUT    /comments/:id(.:format)                           comments#update
                         DELETE /comments/:id(.:format)                           comments#destroy
        new_user_session GET    /users/sign_in(.:format)                          users/sessions#new
            user_session POST   /users/sign_in(.:format)                          users/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)                         users/sessions#destroy
       new_user_password GET    /users/secret/new(.:format)                       devise/passwords#new
      edit_user_password GET    /users/secret/edit(.:format)                      devise/passwords#edit
           user_password PATCH  /users/secret(.:format)                           devise/passwords#update
                         PUT    /users/secret(.:format)                           devise/passwords#update
                         POST   /users/secret(.:format)                           devise/passwords#create
cancel_user_registration GET    /users/register/cancel(.:format)                  users/registrations#cancel
   new_user_registration GET    /users/register/sign_up(.:format)                 users/registrations#new
  edit_user_registration GET    /users/register/edit(.:format)                    users/registrations#edit
       user_registration PATCH  /users/register(.:format)                         users/registrations#update
                         PUT    /users/register(.:format)                         users/registrations#update
                         DELETE /users/register(.:format)                         users/registrations#destroy
                         POST   /users/register(.:format)                         users/registrations#create
                   login GET    /login(.:format)                                  users/sessions#new
                  logout GET    /logout(.:format)                                 users/sessions#destroy
                    root GET    /                                                 home#index
