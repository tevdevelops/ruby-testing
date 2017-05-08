class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    secs = @seconds % 60
    mins = @seconds / 60 % 60
    hours = @seconds / 3600
    "%02d:%02d:%02d" % [hours, mins, secs]
  end

  def padded num
    "%02d" % [num]
  end

end
