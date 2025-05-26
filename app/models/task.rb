class Task < ApplicationRecord
  belongs_to :contractor, class_name: 'contractor'
  belongs_to :Catagory
end
