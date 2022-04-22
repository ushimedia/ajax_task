class FavoritesController < ApplicationController

  def create
   favorite = current_user.favorites.new(blog_id: params[:blog_id]) 
   favorite.save 
   #redirect_to blogs_path
   # Favorite.create(user_id: current_user.id, blog_id: params[:blog_id])
    
  end

  def destroy
    current_user.favorites.find_by(id: params[:id]).destroy
    
   #favorite = Favorite.find_by(id: params[:id])
   
  end

end
