class Chat < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :talent, optional: true
  belongs_to :company
end
