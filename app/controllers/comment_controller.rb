class CommentController < ApplicationController
    def show
    end

    def new
        @comments = Comment.new(user: User.all.sample, content: params[:content], commentable_id: params[:id]))
    end

    def create
        @comment = Comment.create(user: User.all.sample, content: params[:content])
        redirect_to gossip_path
    end

    def edit
    end

    def update
    end

    def destroy
    end
end
