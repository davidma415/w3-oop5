require_relative 'crop'

class Farm
  def initialize(name)
    @name = name
  end

  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '------------------------'
    puts 'Options'
    puts '[1] field -> add a new field'
    puts '[2] harvest -> harvest crops and adds to total'
    puts '[3] status -> display some information about the farm'
    puts '[4] relax -> provides a description of your fields'
    puts '[5] exit'
    puts 'Enter a number: '
    puts '------------------------'
  end

  def call_option(user_selected)
    case user_selected
    when 1 then new_field
    when 2 then harvest_farm
    when 3 then status_farm
    when 4 then relax_farm
    when 5 then exit
    end
  end

  # This method will create a new field by calling upon our crop class. Type and size will need to be identified
  def new_field
    puts "Please enter the type of crop (corn or wheat): "
    type = gets.chomp.downcase
    puts "Please enter the size in hectares: "
    size = gets.chomp.to_i
    Crop.create(type, size)
    puts "\e[H\e[2J"
  end

  def harvest_farm
    puts "\e[H\e[2J"
    Crop.harvest
  end

  def status_farm
    puts "\e[H\e[2J"
    Crop.status
  end

  def relax_farm
    puts "\e[H\e[2J"
    Crop.relax
  end
end
