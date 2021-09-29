/client/verb/open_discord()
	set name = "Open Discord"
	set category = "Menu"
	to_chat(span("notice","Opening discord in your browser."))
	src << link("https://discord.gg/8h6PUVt")

/client/verb/open_github()
	set name = "Open Gitlab"
	set category = "Menu"
	to_chat(span("notice","Opening gitlab in your browser."))
	src << link("https://gitlab.com/VoiceInYourHead/burgerhalo")


/client/verb/open_patreon()
	set name = "NFO Server Donation"
	set category = "Menu"
	to_chat(span("notice","Opening NFO server donation page in your browser."))
	src << link("https://www.nfoservers.com/donate.pl?force_recipient=1&recipient=emoats18%40gmail.com")



/client/verb/player_who()
	set name = "Player Who"
	set category = "Menu"

	var/list/active_players = list()

	for(var/k in all_clients)
		active_players += k

	to_chat("<b>[length(active_players)] Online Players</b><br>[english_list(active_players)]")

/client/verb/staff_who()
	set name = "Staff Who"
	set category = "Menu"

	var/list/active_staff = list()

	for(var/k in all_clients)
		//var/client/C = all_clients[k]
		if(SSadmin.stored_user_ranks[k])
			var/list/ranks = SSadmin.stored_user_ranks[k]
			active_staff += "[k] ([english_list(ranks)])"

	to_chat("<b>[length(active_staff)] Online Staff</b><br>[english_list(active_staff)]")

/*
/client/verb/redeem_reward()
	set name = "Redeem Reward"
	set category = "Menu"

	var/desired_input = input("Please enter the reward code. Reward codes are case sensitive.","Reward Code") as text

	desired_input = sanitize(desired_input)

	if(desired_input)
		SSreward.check_code(src,desired_input)

	to_chat(span("warning","Invalid reward code!"))

	return FALSE
*/