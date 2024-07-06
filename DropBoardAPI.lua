	local targetDate = f()
	local http 
	local http2
	local http3
	local sucess, errormsg = pcall(function()
		http = game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/00f8/TSP/main/message.txt")
		http2 = game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/00f8/TSP/main/image.txt")
		http3 = game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/00f8/TSP/main/iteminfo.txt")
		targetDate = f()
	end)
	if not sucess then
		warn(errormsg)
	else
		local Time = os.date("!*t", os.time() - 7 * 60 * 60)  -- Change - 5 to whatever your timezone is (EG. New York = - 5)
		local currentDate = os.time(Time)
		local secondsLeft = targetDate - currentDate
		local days = math.floor(secondsLeft / (24 * 60 * 60))
		local hours = math.floor((secondsLeft % (24 * 60 * 60)) / (60 * 60))
		local minutes = math.floor((secondsLeft % (60 * 60)) / 60)
		local seconds = math.floor(secondsLeft % 60)
		
		
		workspace.DropBoard.Board.SurfaceGui.MessageLabel.Text = http
		workspace.DropBoard.Board.SurfaceGui.ImageLabel.Image = http2
		workspace.DropBoard.Board.SurfaceGui.InfoLabel.Text = http3 .. "(" .. secondsLeft .. ")"
	end
