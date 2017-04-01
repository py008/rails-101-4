class Account::PostsController < ApplicationController
  before_action :authenticate_user!
    def index
      @posts = current_user.posts.recent.paginate(:page => params[:page], :per_page => 5)

    end




    private

    def post_params
      params.require(:post).permit(:content)
    end
end
