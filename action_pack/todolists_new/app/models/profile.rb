class Profile < ActiveRecord::Base
  belongs_to :user

  validate :first_or_last_may_be_null_but_not_both
  validate :there_cant_be_a_boy_named_sue

  validates :gender, :inclusion => { :in => ['male', 'female'] }

  def first_or_last_may_be_null_but_not_both
    if !first_name && !last_name
      errors.add(:first_name, "cannot be null if last_name is also null")
    end
  end

  def there_cant_be_a_boy_named_sue
    if gender == 'male' && first_name == 'Sue'
      errors.add(:gender, "boys can't be named sue")
    end
  end

  def self.get_all_profiles(min_birth_year, max_birth_year)
    Profile.where("birth_year BETWEEN :min and :max", min: min_birth_year, max: max_birth_year).order(:birth_year)
  end

end
