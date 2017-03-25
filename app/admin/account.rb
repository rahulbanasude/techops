ActiveAdmin.register Account do
  permit_params :name, :expense, :bill
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
form multipart: true do |f|

	f.inputs 'account' do
      f.input :bill, as: :file
    f.input :name, as: :string
    f.input :expense, as: :string


  end
  f.actions
  end



show do |ad|
 	attributes_table do
    row :name
    row :expense
   	row :bill do
      link_to "Download", (ad.bill.url)
  	 end
    # Will display the image on show object page
 	 end


	end
end
