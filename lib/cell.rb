class Cell

  attr_reader :contents

  def initialize
    @contents = []
  end

  def add_content content
    @contents << content
  end

  def shoot
    @contents[0].shoot
  end

end
