class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.pluck(:actor).uniq
  end

  def locations
    auditions.pluck(:location).uniq
  end

  def lead
    auditions.find_by_hired(true) || 'no actor has been hired for this role'
  end

  def understudy
    auditions.where(hired: true).take(2).last ||
      'no actor has been hired for understudy for this role'
  end
end
