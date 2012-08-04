class Report < ActiveRecord::Base

  ############
  ## Scopes ##
  ############

  scope :search, lambda { |query|
    where(%{
          owner_name LIKE :q OR
          owner_email LIKE :q OR
          brand LIKE :q OR
          model LIKE :q OR
          serial LIKE :q
          }, :q => query)
  }

  #################
  ## Validations ##
  #################

  validates_presence_of :owner_name
  validates_presence_of :owner_email
  validates_presence_of :brand
  validates_presence_of :model
end
