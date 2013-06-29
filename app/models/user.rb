class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:name,:gender
  validates :name, :presence=> true
  validates :email ,:uniqueness => true
validates :gender, :presence=> true
  # attr_accessible :title, :body
  has_and_belongs_to_many :events

=begin
  before_save :reduce_price

  def reduce_price
   if self.gender==true
    self.price=self.price*5/100
    end
  end
=end
end
