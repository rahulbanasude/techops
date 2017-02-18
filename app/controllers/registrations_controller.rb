class RegistrationsController < ApplicationController


  def registration
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
  if @registration.save
    redirect_to pages_registrations_path, notice: "Thank you for Registering"
  else
    render 'new', alert: "Registration failed."

  end
end
  private

    def registration_params
      params.require(:registration).permit(:name, :email, :number, :college, :document)
    end

end
