# Correction Felix

class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    p two_digits(number_of_hours) + ":" + two_digits(number_of_minutes) + ":" + two_digits(number_of_seconds)
  end

  private

    def number_of_hours
      @seconds / 3600
    end

    def number_of_minutes
      (@seconds - number_of_hours * 3600) / 60
    end

    def number_of_seconds
      @seconds - number_of_hours * 3600 - number_of_minutes * 60
    end

    def two_digits(integer)
      integer.to_s.rjust(2,'0')
    end
end