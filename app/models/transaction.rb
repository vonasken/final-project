class Transaction < ApplicationRecord

  belongs_to :user, :listing 
end
