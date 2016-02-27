class Client < ActiveRecord::Base
  belongs_to :user
  has_many :trusts
  has_many :wills
  has_many :pension_transfers
end
