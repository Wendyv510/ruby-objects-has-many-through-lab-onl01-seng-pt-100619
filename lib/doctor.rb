class Doctor 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(date,patient,doctor)
    Appointment.new(date,patient,self)
  end 
  
  def appointments 
    appointments.collect do |appointments|
      appointment.doctor == doctor 
    end 
  end 
  
  def patients 
    doctor.appointments.collect do |appointments|
      appointments.doctor 
    end 
  end 
  
  
end 