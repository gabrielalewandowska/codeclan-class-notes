require_relative("vehicle")

class Motorbike < Vehicle

  def initialize(handlebars)
    super(2)
    @handlebars = handlebars
  end

  def start_engine
    return super + " (HELL YEAH!)"
  end
end
