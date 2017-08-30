class User < ActiveRecord::Base
  has_secure_password

  has_many :playlists
  has_many :songs_added, through: :playlists, source: :song


  before_save :downcase_fields

  validates :first_name, :last_name, presence: true, length: 2..30
  validates_format_of :first_name, :last_name, with: /\A[-a-z]+\Z/i
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :password, length: { minimum: 4 }
  def downcase_fields
        self.first_name.downcase!
        self.last_name.downcase!
        self.email.downcase!
    end
end
