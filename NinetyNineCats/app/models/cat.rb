class Cat < ActiveRecord::Base
  validate :timeliness
  validates :color, inclusion: { in: %w(white black brown red green blue)}
  validates :name, uniqueness: true
  validates :sex, inclusion: { in: %w(m f)}
  validates :birth_date, :color, :name, :sex, :description, presence: true
  
  def timeliness
    birth_date < Date.current
  end
  
  def age
    Date.current - birth_date
  end
end