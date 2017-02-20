class RegistrationsController < ApplicationController


  def registration
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
    respond_to do |format|
  if @registration.save
          format.html { redirect_to pages_registration_path, notice: 'Registration was successful' }

  else
    render 'new', alert: "Registration failed."

  end
end
end
  private

    def registration_params
      params.require(:registration).permit(:name, :email, :number, :college, :document)
    end

end
