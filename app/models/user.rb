class User < ActiveRecord::Base
  attr_accessible :display_public, :email, :name, 
                  :preferred_contact_channel, :private_bio, 
                  :public_bio, :phone, :instruments, :vocals

  validates :name, :presence => {:message => ' cannot be blank'}
  validates :email, :presence => {:message => ' cannot be blank'}
end
