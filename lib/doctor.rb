class Doctor


attr_accessor :appointments
attr_reader :name 

def initialize(name)
  @name = name
  @appointments = []
end 

def add_appointment(appt)
  @appointments << appt
  appt.doctor = self 
end 

def patients
  self.appointments.map do |x|
    x.patient 
  end 
end 




end 