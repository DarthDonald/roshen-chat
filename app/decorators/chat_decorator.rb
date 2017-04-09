class ChatDecorator < Draper::Decorator

	delegate_all

	def as_json *args
		{
			id: id,
			name: name,
			admin: admin_id.to_s,
			users: user_ids
		}
	end
end