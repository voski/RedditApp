# == Schema Information
#
# Table name: subs
#
#  id           :integer          not null, primary key
#  title        :string           not null
#  description  :text             not null
#  moderator_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Sub < ActiveRecord::Base
  belongs_to(
    :moderator,
    class_name: 'User',
    foreign_key: :moderator_id,
    primary_key: :id
  )

  has_many :posts

  def is_moderator?(user)
    user.id == self.moderator_id
  end
end
