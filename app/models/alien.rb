class Alien < ActiveRecord::Base
   has_many :visitations
   has_many :earthlings, through: :visitations

   def visit(earthling)
      Visitation.create(date: Time.now, alien_id: self.id, earthling: earthling)
      # ORRRRRR
      # earthling.visitations.create(date: Date.today, alien: self)
   end

   def total_light_years_traveled
      2 * self.light_years_to_home_planet * self.visitations.length
   end

   def self.most_frequent_visitor
      self.all.max_by { |alien| alien.visitations.size }
   end

   def self.average_light_years_to_home_planet
      (Alien.all.sum(:light_years_to_home_planet) / Alien.all.length).to_f
   end
end
