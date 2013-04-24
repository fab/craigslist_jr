class Post < ActiveRecord::Base
  belongs_to :category

  def create_secret_key
    self.update_attribute(:secret_key, SecureRandom.hex(3))
  end
end
