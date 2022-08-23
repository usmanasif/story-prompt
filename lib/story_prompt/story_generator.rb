module StoryPrompt
  class StoryGenerator
    def initialize(data)
      @data = data
      @errors = []
    end

    def story
      if valid_keys? || validate_input?
        save_input_data
        puts "One day Anna was walking her #{@data['NUMBER']} #{@data['UNIT_OF_MEASURE']} commute to #{@data['PLACE']} and found a #{@data['ADJECTIVE']} #{@data['NOUN']} on the ground."
      else
      @errors.each { |e| puts e}
      end
    end

    def valid_keys?
      ['NUMBER', 'UNIT_OF_MEASURE', 'PLACE', 'ADJECTIVE', 'NOUN'].each do |key|
        @errors << "\'#{key}\' is missing!" if !(@data.key?(key))
      end
      @errors.empty?
    end

    def validate_input?
      @data.each do |key, value|
        if key.eql? 'NUMBER' and value.to_i.negative?
          @errors << "\'#{key}\' can't be negative"
        else
          @errors << "\'#{key}\' must not exceed 25 characters" if value.length > 25
        end
      end
      @errors.empty?
    end

    def save_input_data
      file = File.open('user_input.txt', 'a')
      file.write("#{@data.to_json}\n")
      file.close
    end
  end
end
