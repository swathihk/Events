class Event < ActiveRecord::Base
  attr_accessible :address, :amount, :description, :event_date, :event_title, :last_date

  has_and_belongs_to_many :users

   validates :address, :presence=> true
    validates :amount, :presence=> true
     validates :description, :presence=> true,:length => { :within => 30..150 }
      validates :event_date, :presence=> true
       validates :event_title, :presence=> true
        validates :last_date, :presence=> true

          validate :happened_at_is_valid_datetime

  def happened_at_is_valid_datetime
    errors.add(:last_date, 'of Registration Should be less then Event Date') if (event_date <= last_date)
  end


end

