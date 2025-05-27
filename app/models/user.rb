class User < ApplicationRecord
  validates :name, :email, :contact, presence:{ message: "must be given please" }
  validates :email, uniqueness: { message: "this email is alredy exist" }


end
