class Employee < ApplicationRecord
  belongs_to :position
  belongs_to :department
=begin
  begin
    validates :name, format: { with: /\A[a-zA-Z]+\z/,
                               message: "only allows letters" }
    validates :surname, format: { with: /\A[a-zA-Z]+\z/,
                               message: "only allows letters" }
    validate do
      self.errors[:start_work] << "must be a valid date" unless (DateTime.parse(self.start) rescue false)
    end
    validate do
      self.errors[:date_birthday] << "must be a valid date" unless (DateTime.parse(self.start) rescue false)
    end
  end
=end
end
