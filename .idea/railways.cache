                  Prefix Verb   URI Pattern                              Controller#Action
                   likes POST   /likes(.:format)                         likes#create
                    like DELETE /likes/:id(.:format)                     likes#destroy
               followers POST   /followers(.:format)                     followers#create
                follower DELETE /followers/:id(.:format)                 followers#destroy
              home_index GET    /home/index(.:format)                    home#index
             home_search GET    /home/search(.:format)                   home#search
           post_comments POST   /posts/:post_id/comments(.:format)       comments#create
                   posts GET    /posts(.:format)                         posts#index
                         POST   /posts(.:format)                         posts#create
                new_post GET    /posts/new(.:format)                     posts#new
               edit_post GET    /posts/:id/edit(.:format)                posts#edit
                    post GET    /posts/:id(.:format)                     posts#show
                         PATCH  /posts/:id(.:format)                     posts#update
                         PUT    /posts/:id(.:format)                     posts#update
                         DELETE /posts/:id(.:format)                     posts#destroy
        comment_comments POST   /comments/:comment_id/comments(.:format) comments#create
                comments POST   /comments(.:format)                      comments#create
        new_user_session GET    /users/sign_in(.:format)                 users/sessions#new
            user_session POST   /users/sign_in(.:format)                 users/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)                users/sessions#destroy
       new_user_password GET    /users/password/new(.:format)            users/passwords#new
      edit_user_password GET    /users/password/edit(.:format)           users/passwords#edit
           user_password PATCH  /users/password(.:format)                users/passwords#update
                         PUT    /users/password(.:format)                users/passwords#update
                         POST   /users/password(.:format)                users/passwords#create
cancel_user_registration GET    /users/register/cancel(.:format)         users/registrations#cancel
   new_user_registration GET    /users/register/sign_up(.:format)        users/registrations#new
  edit_user_registration GET    /users/register/edit(.:format)           users/registrations#edit
       user_registration PATCH  /users/register(.:format)                users/registrations#update
                         PUT    /users/register(.:format)                users/registrations#update
                         DELETE /users/register(.:format)                users/registrations#destroy
                         POST   /users/register(.:format)                users/registrations#create
   new_user_confirmation GET    /users/verification/new(.:format)        devise/confirmations#new
       user_confirmation GET    /users/verification(.:format)            devise/confirmations#show
                         POST   /users/verification(.:format)            devise/confirmations#create
                   login GET    /login(.:format)                         users/sessions#new
                  logout GET    /logout(.:format)                        users/sessions#destroy
               edit_user GET    /users/:id/edit(.:format)                users#edit
                    user GET    /users/:id(.:format)                     users#show
                         PATCH  /users/:id(.:format)                     users#update
                         PUT    /users/:id(.:format)                     users#update
                    root GET    /                                        home#index
