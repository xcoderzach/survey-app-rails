require 'digest/sha1'

class User < ActiveRecord::Base
  belongs_to :group
  has_many :class_instances, :foreign_key => "instructor_id"
  has_many :surveys, :foriegn_key => :owner_id

  def password=(password)
    encrypted_password = Digest::SHA1.hexdigest("sdfasdfsd" + password + "jh23i4y23i4gruhekfhbsdkhfgwuyrtjdshgf")
  end
end
