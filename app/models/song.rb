class Song < ActiveRecord::Base
  belongs_to :user, required: true


  has_many :playlists
  has_many :users_added, through: :playlists, source: :user
  validates :title, :artist, presence: true, length: {minimum: 2}
end
