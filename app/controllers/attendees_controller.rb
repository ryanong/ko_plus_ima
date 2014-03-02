class AttendeesController < ApplicationController
  respond_to :json

  # POST /attendees
  # POST /attendees.json
  def create
    @attendee = Attendee.new(attendee_params)

    respond_to do |format|
      if @attendee.save
        format.json { render json: @attendee.to_json, status: :created }
      else
        format.json { render json: @attendee.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def attendee_params
    params.require(:attendee).
      permit(
        :first_name,
        :last_name,
        :email,
        :welcome_drinks,
        :wedding,
        :guests,
        :dietary_restrictions,
        :transportation,
        :lodging,
        :favorite_drink,
        :sunday_breakfast,
        :comments
    )
  end
end
