class Field

  def initialize(type,size)
    @type = type
    @size = size
  end

  def type
    return @type
  end

  def size
    return @size
  end

  def production

    if @type == "corn"
      return @size * 20
    elsif @type == "wheat"
      return @size * 30
    else
      return "Invalid field type. Make sure field is either corn or wheat"
    end
    
  end

end
