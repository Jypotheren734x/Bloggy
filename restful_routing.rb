                  Prefix Verb   URI Pattern                                       Controller#Action
            comments_new GET    /comments/new(.:format)                           comments#new
         comments_create GET    /comments/create(.:format)                        comments#create
       friend_add_friend GET    /friend/add_friend(.:format)                      friend#add_friend
    friend_remove_friend GET    /friend/remove_friend(.:format)                   friend#remove_friend
              user_index GET    /user(.:format)                                   user#index
                         POST   /user(.:format)                                   user#create
                new_user GET    /user/new(.:format)                               user#new
               edit_user GET    /user/:id/edit(.:format)                          user#edit
                    user GET    /user/:id(.:format)                               user#show
                         PATCH  /user/:id(.:format)                               user#update
                         PUT    /user/:id(.:format)                               user#update
                         DELETE /user/:id(.:format)                               user#destroy
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
        new_user_session GET    /users/login(.:format)                            users/sessions#new
            user_session POST   /users/login(.:format)                            users/sessions#create
    destroy_user_session DELETE /users/logout(.:format)                           users/sessions#destroy
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
   new_user_confirmation GET    /users/verification/new(.:format)                 devise/confirmations#new
       user_confirmation GET    /users/verification(.:format)                     devise/confirmations#show
                         POST   /users/verification(.:format)                     devise/confirmations#create
                    root GET    /                                                 home#index
