class UsersController < ApplicationController
	before_filter :authenticate_user!

	def show
		@user = User.find(params[:id])
		@photos = @user.photos
	end

	def show_profile_pic
		profile_pic = User.find(params[:id])
		send_data(profile_pic.profile_pic, type: 'image/jpg', disposition: 'inline')
	end

	# def show_user_photos
	# 	photos = Photo.select("photos.*").where( "user_id = ?", params[:id])
	# 	p photos[0]
	# 	photos.each do |photo|
	# 		send_data(photo.file, type: 'image/jpg', disposition:  'inline')
	# 	end
	# end

end