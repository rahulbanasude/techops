ActiveAdmin.register Registration do

permit_params :name, :email, :number, :college, :document
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

show do |ad|
 	attributes_table do
    row :name
    row :email
    row :number
    row :college
   	row :document do
      link_to "Download", (ad.document.url)
  	 end
    # Will display the image on show object page
 	 end


	end
end
