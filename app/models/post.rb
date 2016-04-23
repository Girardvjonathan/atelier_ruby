class Post < ActiveRecord::Base
  belongs_to :author, class_name: 'User'

  validates_presence_of :title, :content, :author
  validates_presence_of :content, if: :published?

  scope :published, -> { where(published: true) }
end
