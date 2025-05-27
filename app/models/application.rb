class Application < ApplicationRecord
  belongs_to :task
  belongs_to :worker, class_name: "User"
end
