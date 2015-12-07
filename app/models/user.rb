class User < ActiveRecord::Base
  validates :first_name, :last_name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def needs_edit?
    needs_edit = false
    needs_edit = true if email.blank?
    needs_edit = true if first_name.blank?
    needs_edit = true if last_name.blank?
    needs_edit
  end
end
