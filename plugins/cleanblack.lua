local function BeyondTeam(msg, matches)
	if matches[1]:lower() == 'free' and is_owner(msg) then
		local function get_mem(TM, BD)
			if BD.total_count_ == 0 then
				return '_Block List is Empty!_'
			else
				for k, v in pairs(BD.members_) do
					tdcli.changeChatMemberStatus(msg.to.id, v.user_id_, 'Left', dl_cb, nil)
				end
				return '*All Block Members are Free as Bird! :)*'
			end
		end
		tdcli.getChannelMembers(msg.to.id, 0, 'Kicked', 200, get_mem, nil)
	end
end

return {
  patterns ={
    "^[/!]([Ff]ree)$",
  },
  run = BeyondTeam,
}
-- By @ToOfan
-- Channel: @BeyondTeam