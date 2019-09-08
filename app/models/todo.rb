class Todo < ApplicationRecord
    ##validaciones   
    validates :description, presence: true
end
