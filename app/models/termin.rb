class Termin < ApplicationRecord
  validates_presence_of :title
  validates_length_of :title, :maximum => 32
end
