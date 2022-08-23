require 'json'

module StoryPrompt
  class Stat
    def initialize
      @numeric_data = []
      @text_data = []
    end

    def verify_and_display_stats
      file = File.open('user_input.txt', 'r')
      if File.zero? file
        puts "---- Data Not Found ---- \n Please generate stories first."
      else
        read_data file
        display_stats
      end
      file.close
    end

    def most_common_word(key)
      item_list = @text_data.map { |h| h[key] }
      item_list.max_by { |i| item_list.count(i) }
    end

    def display_stats
      message = "STATISTICS FOR THE STORED RECORDS
      * Max Value for Numeric Input: #{@numeric_data.max}
      * Min Value for Numeric Input: #{@numeric_data.min}
      * Avg Value for Numeric Input: #{(@numeric_data.inject(0.0) { |sum, el| sum + el } / @numeric_data.size).round(2)}
      * Most Common Unit of Measure: #{most_common_word('UNIT_OF_MEASURE')}
      * Most Common Place: #{most_common_word 'PLACE'}
      * Most Common Adjective: #{most_common_word 'ADJECTIVE'}
      * Most Common Noun: #{most_common_word 'NOUN'}"
      puts message
    end

    def read_data(file)
      file.readlines.each do |line|
        data = JSON.parse line
        @numeric_data << data['NUMBER'].to_f
        @text_data << data.to_a[1...5].to_h
      end
    end
  end
end
