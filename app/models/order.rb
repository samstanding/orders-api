class Order < ApplicationRecord
    belongs_to :status
    # before_save :default_values
    # def default_values
    #     self.status_id ||= 1
    # end
end
