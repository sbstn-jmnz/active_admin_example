ActiveAdmin.register Artist do
permit_params :name

	index do
	    selectable_column
	  	  column "Nombre", :name do |artist|
	        link_to artist.name, admin_artist_path(artist) 
	      end
	      column "Albumes", :albumes_del_artista do |artist|
	      	link_to artist.albums.count, admin_artist_albums_path(artist) 
		  end
	      column "Canciones", :canciones_del_artista do |artist|
	      link_to artist.songs.count, admin_artist_songs_path(artist) 
		  end
	    actions
	end

	member_action :songs do
		@songs = Artist.find(params[:id]).songs
    end

end
