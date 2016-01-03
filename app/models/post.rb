class Post < ActiveRecord::Base
  obfuscate_id
  validates :content, presence: true
  belongs_to :user

  scope :today, -> {
    where(created_at: (Time.now.utc.beginning_of_day..Time.now.utc.end_of_day))
  }

  def content=(content)
    self.word_count = content.sanitize.squish.split.size
    write_attribute(:content, content)
  end
end
