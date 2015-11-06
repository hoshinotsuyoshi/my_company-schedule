require "increments/schedule"
require "my_company/schedule/version"

module MyCompany

  HOLIDAYS = [
    Date.new(2016, 7, 5) # Example.
  ].freeze

  module Schedule
    include Increments::Schedule
    extend self

    def holiday?(date = Date.today)
      super || HOLIDAYS.include?(date)
    end
  end
end
