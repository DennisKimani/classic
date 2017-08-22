class Order < ActiveRecord::Base
  validate :status, :presence => true
end
