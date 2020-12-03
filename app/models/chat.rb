class Chat < ApplicationRecord
  belongs_to :employee
  belongs_to :talent
  belongs_to :company
end
