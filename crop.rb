class Crop
  @@all_crops = []
  @@harvested = 0
  attr_reader :type, :size

  def initialize(type, size)
    @type = type
    @size = size
  end

  def self.create(type, size)
    new_crop = self.new(type, size)
    @@all_crops << new_crop
  end

  def self.all
    return @@all_crops
  end

  def self.harvest
    @@all_crops.each {|crop|
      if crop.type.downcase == 'corn'
        puts "Harvesting #{20*crop.size} food from #{crop.size} hectare #{crop.type} field"
        @@harvested += (20*crop.size)
      elsif crop.type.downcase == 'wheat'
        puts "Harvesting #{30*crop.size} food from #{crop.size} hectare #{crop.type} field"
        @@harvested += (30*crop.size)
      end
    }
    self.harvested
  end

  def self.harvested
    puts "The farm has harvested #{@@harvested} food so far"
  end

  def self.status
    @@all_crops.each {|crop| puts "#{crop.type.capitalize} field is #{crop.size} hectares"}
    self.harvested
  end

  def self.relax
    corn_count = 0
    wheat_count = 0
    @@all_crops.each {|crop|
      if crop.type.downcase == 'corn'
        corn_count += crop.size
      elsif crop.type.downcase == 'wheat'
        wheat_count += crop.size
      end
    }
    puts "#{corn_count} hectares of tall green stalks rustling in the breeze fill your horizon. The sun hangs low, casting an orange glow on a sea of #{wheat_count} hectares of wheat."
  end
end
