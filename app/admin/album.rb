ActiveAdmin.register Album do
belongs_to :artist, optional: true
permit_params :name, :year

		index do 
		    selectable_column
		  	  column "Nombre", :name do |album|
		        link_to album.name, admin_artist_album_path(album.artist,album) 
		      end
		      column "Year", :anio_del_album do |album|
		      link_to album.year, admin_artist_album_path(album.artist,album) 
			  end
		      column "Canciones", :canciones_del_album do |album|
		      link_to album.songs.count, admin_artist_album_songs_path(album.artist,album) 
			  end
		    actions
		end

end
