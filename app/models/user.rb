class User < ActiveRecord::Base
  attr_accessible :display_public, :email, :name, 
                  :preferred_contact_channel, :private_bio, 
                  :public_bio, :phone, :instruments, :vocals

  has_many :performances
	has_many :songs, :through => :performances
end
