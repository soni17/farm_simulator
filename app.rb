require './farm.rb'

class App

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

  def startApp(myFarm)

    while (true)

      appMenu()
      selection = gets.chomp.to_s

      if selection == "field"
        addField(myFarm)
      elsif selection == "harvest"
        myFarm.harvest()
      elsif selection == "status"
        myFarm.status()
      elsif selection == "relax"
        myFarm.relax()
      elsif selection == "exit"
        puts "Exiting......."
        break
      else
        puts "command not found"
      end

    end

  end

  def addField(myFarm)

    while (true)

      puts "What kind of field is it: corn or wheat?"
      type = gets.chomp.to_s

      if type == "corn"
        puts "How large is the field in hectares ?"
        size = gets.chomp.to_i
        myFarm.add_field(Field.new('corn',size) )
        puts "Added a corn field of #{size} hectares"
        break
      elsif type == "wheat"
        puts "How large is the field in hectares ?"
        size = gets.chomp.to_i
        myFarm.add_field( Field.new('wheat',size) )
        puts "Added wheat field of #{size} hectares"
        break
      elsif type == "exit"
        break
      else
        puts "invalid entry"
      end

    end

  end

end

myFarm = Farm.new
myApp = App.new
myApp.startApp(myFarm)



