class Element 
    attr_accessor :name, :atomic_number, :atomic_weight

    def initialize name, atomic_weight, atomic_number 
        @name = name
        @atomic_weight = atomic_weight
        @atomic_number = atomic_number
        self.class.all << self
    end

    @elements = []

    def self.all
        @elements
    end

    def self.count
        @elements.count
    end



    def round
        @atomic_weight.round
    end

    def self.display_elements
        @elements.each do |element|
            puts "Element name: #{element.name.capitalize}" 
            puts "Atomic Weight: #{element.atomic_weight.round}"
            puts "Atomic Number: #{element.atomic_number}"
            puts "#############"
        end
    end

    
end