class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        @post = current_user.posts.new(post_params)

        if @topic.save
            redirect_to posts_path, success: '投稿に成功しました'
        else
            flash.now[:danger] = "投稿に失敗しました"
            render :new
        end
    end

    private
    def topic_params
        params.require(:topic).permit(:content)
    end
end
