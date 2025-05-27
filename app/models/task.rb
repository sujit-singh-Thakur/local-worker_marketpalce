class Task < ApplicationRecord
  belongs_to :contractor, class_name: "User"
  belongs_to :Catagory
end
