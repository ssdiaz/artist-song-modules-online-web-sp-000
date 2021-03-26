require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  # def initialize
  #   @@songs << self
  # end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  extend  Memorable

  def artist=(artist)
    @artist = artist
  end

  include Paramable

end
