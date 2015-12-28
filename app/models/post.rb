class Post < ActiveRecord::Base
  validates :content, presence: true
  belongs_to :user

  scope :today, -> {
    where(:created_at => (Time.now.beginning_of_day..Time.now.end_of_day))
  }

  def content=(content)
    self.word_count = content.sanitize.squish.split.size
    assign_attributes(content: content)
  end
end
