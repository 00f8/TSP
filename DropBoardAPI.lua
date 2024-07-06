local targetDate = os.time({year=2024, month=7, day=6, hour=7, min=0, sec=0})
local Time = os.date("!*t", os.time() - 7 * 60 * 60)  -- Change - 5 to whatever your timezone is (EG. New York = - 5)
local currentDate = os.time(Time)
local secondsLeft = targetDate - currentDate
local days = math.floor(secondsLeft / (24 * 60 * 60))
local hours = math.floor((secondsLeft % (24 * 60 * 60)) / (60 * 60))
local minutes = math.floor((secondsLeft % (60 * 60)) / 60)
local seconds = math.floor(secondsLeft % 60)
	
	
workspace.DropBoard.Board.SurfaceGui.MessageLabel.Text = "Domino Crown"
workspace.DropBoard.Board.SurfaceGui.ImageLabel.Image = "rbxthumb://type=Asset&id=1031429&w=420&h=420"
workspace.DropBoard.Board.SurfaceGui.InfoLabel.Text = "Copies: 25, Price: 100,000 " .. "(" .. string.format("%dd %02dh %02dm %02ds", days, hours, minutes, seconds) .. ")"
