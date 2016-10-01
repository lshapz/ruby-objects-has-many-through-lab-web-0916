class Patient

attr_accessor :date, :doctor, :patient, :appointments
attr_reader :name 
def initialize (name)
  @name = name
  @appointments = []
end 

def add_appointment(appt)
  @appointments << appt
  appt.patient = self
end 

def appointments 
  @appointments
end 

def doctors
  self.appointments.map do |x|
    x.doctor 
  end 
end 


end 