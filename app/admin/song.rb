ActiveAdmin.register Song do
controller do
nested_belongs_to :artist, :album, optional: true
end
permit_params :title, :composer, :time, :album_id
		
	index do
	    selectable_column
	  	  column "Nombre", :title
	  	  column "Compositor", :composer
	      column "Tiempo", :time do |t|
	      	 t.time.strftime('%M:%S')
	      end
	  	actions
	end
end
