class Meme < ApplicationRecord
  validates :title, :ulr_source, presence: true
  validates :title, uniqueness: true

  belongs_to :category
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :owner, class_name: "User"
  has_and_belongs_to_many :voters, join_table: "memes_users", class_name: "User"
end
