module ApplicationHelper

	def check_user_regiser_for_event(event)
     user=User.find(current_user.id)
     event_reg=user.events.where(:id=>event)
     return event_reg
	end

end
