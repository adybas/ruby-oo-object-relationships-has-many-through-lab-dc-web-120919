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

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |appointments_array|
            appointments_array.patient == self
        end
    end

    def doctors
        self.appointments.map do |appointment|
            appointment.doctor
        end
    end
end