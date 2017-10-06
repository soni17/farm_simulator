require './field.rb'

class Farm

  def initialize()
    @fields = []
    @totalHarvested = 0
  end

  def appMenu()
    puts "--------------------
    Options:
    field -> adds a new field
    harvest -> harvests crops and adds to total harvested
    status -> displays some information about the farm
    relax -> provides lovely descriptions of your fields
    exit -> exits the program
    --------------------"
  end

  def fieldEntry()

    while (true)

      puts "What kind of field is it: corn or wheat?"
      type = gets.chomp.to_s

      if type == "corn"
        puts "How large is the field in hectares ?"
        size = gets.chomp.to_i
        @fields << Field.new('corn',size)
        puts "Added a corn field of #{size} hectares"
        break
      elsif type == "wheat"
        puts "How large is the field in hectares ?"
        size = gets.chomp.to_i
        @fields << Field.new('wheat',size)
        puts "Added wheat field of #{size} hectares"
        break
      elsif type == "exit"
        break
      else
        puts "invalid entry"
      end

    end

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

    @fields.each { |item|
      if item.type == "corn"
        ctotal += item.size
      elsif item.type == "wheat"
        wtotal += item.size
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
