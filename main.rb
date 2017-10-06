require './farm.rb'

myFarm = Farm.new()

while (true)
  myFarm.appMenu()
  selection = gets.chomp.to_s

  if selection == "field"
    myFarm.fieldEntry()
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
