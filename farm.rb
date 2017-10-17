require './field.rb'

class Farm

  def initialize()
    @fields = []
    @totalHarvested = 0
  end

  def add_field(field)
    @fields << field
  end

  def harvest()
    @fields.each { |field|
      puts "Harvesting #{field.production} food from #{field.size} hectare #{field.type} field."
      @totalHarvested += field.production
    }
    puts "The farm has #{@totalHarvested} harvested food so far."
  end

  def status()
    @fields.each { |field|
      puts "#{field.type} field is #{field.size} hectares."
    }
    puts "The farm has #{@totalHarvested} harvested food so far."
  end

  def relax()

    ctotal = 0
    wtotal = 0

    @fields.each { |field|
      if field.type == "corn"
        ctotal += field.size
      elsif field.type == "wheat"
        wtotal += field.size
      end
    }

    if ctotal != 0
       puts "#{ctotal} hectares of tall green stalks rustling in the breeze fill your horizon."
    end

    if wtotal != 0
      puts "The sun hangs low, casting an orange glow on a sea of #{wtotal} hectares of wheat."
    end

    if ctotal == 0 && wtotal == 0
      puts "Enjoying the beautiful view. You're not growing any corps."
    end

  end

end
