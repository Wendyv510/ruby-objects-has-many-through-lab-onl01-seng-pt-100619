class Patient 
  
  attr_accessor :name 
  
  @@all = []
   
  def initialize(name) 
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 

  def new_appointment(doctor,date)
    Appointment.new(self,doctor,date)
  end 
  
  def appointments 
    appointment.all.each do |appointments| 
      appointment.patient == self 
    end 
  end 
  
  def doctors 
    patient.appointments.map do |appointments|
      appointments.doctor 
    end 
  end 
  
end 
    