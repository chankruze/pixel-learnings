=begin
Implement a configurable Vehicle class with an option to set various attributes like engine, wheels, color, and interior, and then display the configured vehicle's summary.

Within the Vehicle class, define the following:

A class method named configure that yields the vehicle object to a block for configuration.
A class method named interior which handles the configuration for the vehicle's interior using an Interior class and yields the interior object to a block for configuration.
A class method the named summarize_configuration to generate the summary of the configured vehicle. It's important to note that the Interior class requires its own summarize_configuration method to return its interior configuration summary. This method should be called by the Vehicle class's summarize_configuration method. The final summary should look like this:


The vehicle has a V6 engine, 4 wheels, a red exterior color and a leather black interior.
=end

class Vehicle
    class << self
      attr_accessor :engine, :wheels, :color, :interior_config
      
      def configure
        yield(self)
      end
      
      def summarize_configuration
        config_summary = "The vehicle has a #{engine} engine, #{wheels} wheels, a #{color} exterior color"
        config_summary += interior_config.summarize_configuration if interior_config
        
        puts config_summary + "."
      end
      
      def interior
        @interior_config ||= Interior.new
        yield(interior_config)
      end
    end
    
    private
    
      class Interior
        attr_accessor :material, :color
        
        def summarize_configuration
          " and a #{material} #{color} interior"
        end
      end
  end
  
  Vehicle.configure do |config|
    config.engine = "V6"
    config.wheels = 4
    config.color = "red"
    config.interior do |int|
      int.material = "leather"
      int.color = "black"
    end
  end
  
  Vehicle.summarize_configuration