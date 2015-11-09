require "increments/schedule"
require "my_company/schedule/version"

module MyCompany
  HOLIDAYS = (2007..2106).map do |year|
    [
      Date.new(year, 1, 1),
      Date.new(year, 1, 2),
      Date.new(year, 1, 3),
      Date.new(year, 1, 4),
      Date.new(year, 12, 30),
      Date.new(year, 12, 31),
    ]
  end.flatten.freeze

  module Schedule
    include Increments::Schedule
    extend self

    def holiday?(date = Date.today)
      super || HOLIDAYS.include?(date)
    end
  end
end
