                  Prefix Verb   URI Pattern                                      Controller#Action
             comment_new GET    /comment/new(.:format)                           comment#new
          comment_create GET    /comment/create(.:format)                        comment#create
       friend_add_friend GET    /friend/add_friend(.:format)                     friend#add_friend
    friend_remove_friend GET    /friend/remove_friend(.:format)                  friend#remove_friend
              user_index GET    /user(.:format)                                  user#index
                         POST   /user(.:format)                                  user#create
                new_user GET    /user/new(.:format)                              user#new
               edit_user GET    /user/:id/edit(.:format)                         user#edit
                    user GET    /user/:id(.:format)                              user#show
                         PATCH  /user/:id(.:format)                              user#update
                         PUT    /user/:id(.:format)                              user#update
                         DELETE /user/:id(.:format)                              user#destroy
              home_index GET    /home/index(.:format)                            home#index
             home_search GET    /home/search(.:format)                           home#search
           post_comments GET    /post/:post_id/comments(.:format)                comments#index
                         POST   /post/:post_id/comments(.:format)                comments#create
        new_post_comment GET    /post/:post_id/comments/new(.:format)            comments#new
       edit_post_comment GET    /post/:post_id/comments/:id/edit(.:format)       comments#edit
            post_comment GET    /post/:post_id/comments/:id(.:format)            comments#show
                         PATCH  /post/:post_id/comments/:id(.:format)            comments#update
                         PUT    /post/:post_id/comments/:id(.:format)            comments#update
                         DELETE /post/:post_id/comments/:id(.:format)            comments#destroy
              post_index GET    /post(.:format)                                  post#index
                         POST   /post(.:format)                                  post#create
                new_post GET    /post/new(.:format)                              post#new
               edit_post GET    /post/:id/edit(.:format)                         post#edit
                    post GET    /post/:id(.:format)                              post#show
                         PATCH  /post/:id(.:format)                              post#update
                         PUT    /post/:id(.:format)                              post#update
                         DELETE /post/:id(.:format)                              post#destroy
        comment_comments GET    /comment/:comment_id/comments(.:format)          comments#index
                         POST   /comment/:comment_id/comments(.:format)          comments#create
     new_comment_comment GET    /comment/:comment_id/comments/new(.:format)      comments#new
    edit_comment_comment GET    /comment/:comment_id/comments/:id/edit(.:format) comments#edit
         comment_comment GET    /comment/:comment_id/comments/:id(.:format)      comments#show
                         PATCH  /comment/:comment_id/comments/:id(.:format)      comments#update
                         PUT    /comment/:comment_id/comments/:id(.:format)      comments#update
                         DELETE /comment/:comment_id/comments/:id(.:format)      comments#destroy
           comment_index GET    /comment(.:format)                               comment#index
                         POST   /comment(.:format)                               comment#create
             new_comment GET    /comment/new(.:format)                           comment#new
            edit_comment GET    /comment/:id/edit(.:format)                      comment#edit
                 comment GET    /comment/:id(.:format)                           comment#show
                         PATCH  /comment/:id(.:format)                           comment#update
                         PUT    /comment/:id(.:format)                           comment#update
                         DELETE /comment/:id(.:format)                           comment#destroy
        new_user_session GET    /users/login(.:format)                           users/sessions#new
            user_session POST   /users/login(.:format)                           users/sessions#create
    destroy_user_session DELETE /users/logout(.:format)                          users/sessions#destroy
       new_user_password GET    /users/secret/new(.:format)                      devise/passwords#new
      edit_user_password GET    /users/secret/edit(.:format)                     devise/passwords#edit
           user_password PATCH  /users/secret(.:format)                          devise/passwords#update
                         PUT    /users/secret(.:format)                          devise/passwords#update
                         POST   /users/secret(.:format)                          devise/passwords#create
cancel_user_registration GET    /users/register/cancel(.:format)                 users/registrations#cancel
   new_user_registration GET    /users/register/sign_up(.:format)                users/registrations#new
  edit_user_registration GET    /users/register/edit(.:format)                   users/registrations#edit
       user_registration PATCH  /users/register(.:format)                        users/registrations#update
                         PUT    /users/register(.:format)                        users/registrations#update
                         DELETE /users/register(.:format)                        users/registrations#destroy
                         POST   /users/register(.:format)                        users/registrations#create
   new_user_confirmation GET    /users/verification/new(.:format)                devise/confirmations#new
       user_confirmation GET    /users/verification(.:format)                    devise/confirmations#show
                         POST   /users/verification(.:format)                    devise/confirmations#create
                    root GET    /                                                home#index
