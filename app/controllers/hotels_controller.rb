class HotelsController < ApplicationController
    def index
        
          
          hotels = Hotel.where(category: params[:category]).includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
          
          @hotels = Kaminari.paginate_array(hotels).page(params[:page]).per(3)
          
          
    end


    def new
        @hotel = Hotel.new
    end

    def create
        hotel = Hotel.new(hotel_params)

        hotel.user_id = current_user.id

        if hotel.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
    end

    def show
        @hotel = Hotel.find(params[:id])

        @comments = @hotel.comments
        @comment = Comment.new
    end

    def edit
        @hotel = Hotel.find(params[:id])
    end

    def update
        hotel = Hotel.find(params[:id])
        if hotel.update(hotel_params)
          redirect_to :action => "show", :id => hotel.id
        else
          redirect_to :action => "new"
        end
    end

    def destroy
        hotel = Hotel.find(params[:id])
        hotel.destroy
        redirect_to action: :index
    end
    
      private
      def hotel_params
        params.require(:hotel).permit(:body, :title, :image, :star, :latitude, :longitude, :category)
      end
end
