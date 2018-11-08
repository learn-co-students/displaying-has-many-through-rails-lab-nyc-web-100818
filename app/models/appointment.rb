class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def format_datetime
    string =self.appointment_datetime
    string.strftime("%B %d, %Y at %I:%M ")
  end
  
end
