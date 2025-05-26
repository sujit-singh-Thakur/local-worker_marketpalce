class Contractor < User
  has_many :task,foreign_key: :contractor_id
end
