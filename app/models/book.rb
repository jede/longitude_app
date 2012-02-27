require 'ostruct'
require 'faker'

class Book < OpenStruct
  def self.all
    (1..20).map do |id|
      Book.new(
        title: Faker::Lorem.words(2).join(' ').titlecase, 
        blurb: Faker::Lorem.paragraph )
    end
  end
end
