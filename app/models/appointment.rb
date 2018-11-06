class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def string_date
    string = self.appointment_datetime
    string.strftime("%B %d, %Y at %I:%M ")
  end
end
