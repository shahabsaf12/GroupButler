local action = function(msg, blocks, ln)
    
    if blocks[1] == 'code' then
        if not msg.reply_to_message then
            api.sendReply(msg, 'Reply')
		end
		if msg.reply_to_message then
api.sendMessage(msg.chat.id, '`'..msg.reply_to_message.text..'`', 'Markdown')

end
end
if blocks[1] == 'bold' then
        if not msg.reply_to_message then
            api.sendReply(msg, 'Reply')
		end
		if msg.reply_to_message then
api.sendMessage(msg.chat.id, '*'..msg.reply_to_message.text..'*', 'Markdown')
end
end
if blocks[1] == 'italic' then
        if not msg.reply_to_message then
            api.sendReply(msg, 'Reply')
		end
		if msg.reply_to_message then
api.sendMessage(msg.chat.id, '_'..msg.reply_to_message.text..'_', 'Markdown')
end
end
if blocks[1] == 'echo' then
    if not msg.reply_to_message then
    api.sendMessage(msg.chat.id, 'Reply', 'Markdown')
end
if msg.reply_to_message then
    api.sendMessage(msg.chat.id, msg.reply_to_message.text, 'Markdown')
end
end
end
return {
	action = action,
	triggers = {
	    '^/(code)',
	    '^/(echo)',
	    '^/(echo) (.+)',
            '^/(bold)',
            '^/(italic)'
	}
}
