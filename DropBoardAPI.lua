local targetDate = os.time({year=2024, month=7, day=21, hour=16, min=0, sec=0})
local Time = os.date("!*t", os.time() - 7 * 60 * 60)  -- Change - 5 to whatever your timezone is (EG. New York = - 5)
local currentDate = os.time(Time)
local secondsLeft = targetDate - currentDate
local days = math.floor(secondsLeft / (24 * 60 * 60))
local hours = math.floor((secondsLeft % (24 * 60 * 60)) / (60 * 60))
local minutes = math.floor((secondsLeft % (60 * 60)) / 60)
local seconds = math.floor(secondsLeft % 60)
	
	
workspace.DropBoard.Board.SurfaceGui.MessageLabel.Text = "Linked Sword (Wave)"
workspace.DropBoard.Board.SurfaceGui.ImageLabel.Image = "rbxthumb://type=Asset&id=125013769&w=420&h=420"
workspace.DropBoard.Board.SurfaceGui.InfoLabel.Text = "Copies: 100, Price: 47,324"
workspace.DropBoard.Board.SurfaceGui.DateLabel.Text = string.format("%dd %02dh %02dm %02ds", days, hours, minutes, seconds)

if secondsLeft <= 0 then
	workspace.DropBoard.Board.SurfaceGui.DateLabel.Visible = false
else
	workspace.DropBoard.Board.SurfaceGui.DateLabel.Visible = true
end
