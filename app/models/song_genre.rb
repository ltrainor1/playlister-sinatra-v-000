class SongGenre < ActiveRecord::Base

  belongs_to :song
  belongs_to :genre

  def slug
    @slug = self.name.split(" ")
    @slug.map! {|word| word.downcase}
    @slug.join("-")
  end

  def self.find_by_slug(slug)
    self.detect {|song| song.slug == slug}
  end

end
