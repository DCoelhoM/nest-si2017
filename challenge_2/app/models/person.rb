class Person < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :company, presence: true
  validates :email, presence: true, length: { minimum: 5 }
  validates :phone, presence: true, length: { is: 9 }
  validates :email, presence: true, length: { minimum: 5 }
end
