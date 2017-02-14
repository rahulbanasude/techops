class RegistrationsController < InheritedResources::Base

  private

    def registration_params
      params.require(:registration).permit(:name, :email, :number, :college)
    end
end

