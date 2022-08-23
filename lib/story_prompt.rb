require 'json'
require_relative './story_prompt/story_generator'
require_relative './story_prompt/stat'

module StoryPrompt
  def self.generate_prompt(data)
    data_hash = JSON.parse data
    StoryGenerator.new(data_hash).story
  end

  def self.fetch_stats
    Stat.new.verify_and_display_stats
  end
end
