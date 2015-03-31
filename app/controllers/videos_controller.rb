class VideosController < ApplicationController

	def index
		if params[:tag]
			@videos = Video.tagged_with(params[:tag])
		else
		@videos = Video.all.order(:video_title)	
		end

		@tag = params[:tag]

	end

	def new
		@video = Video.new
	end

	def create
		@video = Video.new(video_params)
		if @video.save
			redirect_to video_path(@video)
		else
			render :new
		end
	end

	def show
		@video = Video.find(params[:id])
		@embed_url = @video.embed_url
	end

	def edit
		load_video
		@video_title = @video.video_title
	end

	def update
		load_video
		if @video.update(video_params)
			redirect_to video_path(@video)
		else
			render :edit
		end
	end

	def destroy
		@video = Video.find(params[:id])
		@video.destroy
		redirect_to videos_path
	end

	private

	def load_video
		@video = Video.find(params[:id])
	end

	def video_params
		params.require(:video).permit(:video_title, :embed_url, :tag_list)
	end

end
