class Worker < User
  has_many :application,foreign_key: :workers_id
end
