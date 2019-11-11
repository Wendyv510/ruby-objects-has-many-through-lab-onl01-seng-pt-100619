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
  
  def doctor 
    Appointment.map do |appointment|
      appointment.doctor == self 
    end 
  end 
      
  
  def new_appointment(date,patient)
    Appointment.new(date,patient,self)
  end 
  
  def appointments 
    Appointment.all.select do |appointments|
      Appointment.doctor  
    end 
  end 
  
  def patients 
    appointments.map do |appointment|
      appointment.patient  
    end 
  end 
  
  
end 