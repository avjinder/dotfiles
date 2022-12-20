
local ICON_NAME = "radio_48"
local NOTIFY_ID = 99902
local DEBUG = false
local function dbg(s)
	if DEBUG then
		print(s)
	end
end

local function notify_current_track()
	local data = mp.get_property_native("metadata")
	if not data then
		return
	end

	function get_metadata(data, keys)
		for _, v in pairs(keys) do
			if data[v] and string.len(data[v]) > 0 then
				return data[v]
			end
		end
	end

	local title = get_metadata(data, {"title", "Title", "icy-title"})
	if title then
		local artist, song = string.split(title, "-")
		local command = ""
		if artist and song then
			artist = string.shellescape(artist)
			song = string.shellescape(song)
			command = ("dunstify --appname mpv --urgency low --timeout 8000 --icon %s --replace %s %s %s"):format(ICON_NAME, NOTIFY_ID, artist, song)
		else
			title = string.shellescape(title)
			dbg("Title: " .. title)
			command = ("dunstify --appname mpv --urgency low --timeout 8000 --icon %s --replace %s %s"):format(ICON_NAME, NOTIFY_ID, title)
		end
		dbg("Command: " .. command)
		os.execute(command)
	end

end

-- function test_func() 
-- 	local prop = mp.get_property_native("media-title")
-- 	if prop then
-- 		print("Property: " .. prop)
-- 	end
-- end

local function notify_metadata_updated(_, _)
	notify_current_track()
	-- test_func()
end

function string.split(str, delim)
	local s  = string.find(str, delim)
	if s then
		local artist = string.sub(str, 0, s - 1)
		local song_name = string.sub(str, s + 1 )
		return artist, song_name
	end
end


function string.shellescape(str)
	return "'"..string.gsub(str, "'", "'\"'\"'").."'"
end

mp.register_event("file-loaded", notify_current_track)
mp.observe_property("metadata", nil, notify_metadata_updated)
-- mp.register_event("file-loaded", test_func)
