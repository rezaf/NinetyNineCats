class Cat < ActiveRecord::Base
  validate :timeliness
  validates :color, inclusion: { in: %w(white black brown red green blue)}
  validates :sex, inclusion: { in: %w(M F)}
  validates :birth_date, :color, :name, :sex, :description, presence: true
  
  def timeliness
    :birth_date < Time.now
  end
  
  def age
    Time.now - :birth_date
  end
  
end
