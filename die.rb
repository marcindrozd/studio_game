require_relative 'auditable'

class Die
  attr_reader :number

  include Auditable

  def roll
    @number = rand(1..6)
    audit
    @number
  end
end