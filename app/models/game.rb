# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  answer     :string(255)
#  max_misses :integer
#  misses     :integer
#  guessed    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Game < ActiveRecord::Base
  # knows to look "games" table for data and
  # defines methods from schema

  # Answer cannot be nil or ""
  validates_presence_of :answer, :max_misses, :misses

  def board
    # Take @answer and only show letters that the player has guessed
    result = ""
    self.answer.split("").each do |char|
      if self.guessed.include?(char)
        result += char
      else
        result += "_"
      end
    end
    result
  end

end
