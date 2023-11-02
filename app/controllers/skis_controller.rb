class SkisController < ApplicationController
  before_action :authenticate_user! only: [:new, :create]
      def top
      end

      def index
        if params[:tag]
          Tag.create(name: params[:tag])
        end
        @skis = Ski.all
        if params[:tag_ids]
          @skis = []
          params[:tag_ids].each do |key, value|
            if value == "1"
              tag_skis = Tag.find_by(name: key).skis
              @skis = @skis.empty? ? tag_skis : @skis & tag_skis
            end
          end
        end
      end

      def new
        @ski = Ski.new
      end
    
      def create
        ski = Ski.new(ski_params)
        ski.user_id = current_user.id
        if ski.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @ski = Ski.find(params[:id])
        @comments = @ski.comments
        @comment = Comment.new
      end
    
      private
      def ski_params
        params.require(:ski).permit(:comment, :image, :overall, :tag_ids, :lat,:lng)
      end
end
