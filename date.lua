local targetDate = os.time({year=2023, month=7, day=22, hour=7, min=0, sec=0}) -- Change the date to when you want the countdown to end
function updateCountdownDisplay()
 local Time = os.date("!*t", os.time() - 5* 60 * 60)  -- Change - 5 to whatever your timezone is (EG. New York = - 5)
 local currentDate = os.time(Time)
 local secondsLeft = targetDate - currentDate
 local days = math.floor(secondsLeft / (24 * 60 * 60))
 local hours = math.floor((secondsLeft % (24 * 60 * 60)) / (60 * 60))
 local minutes = math.floor((secondsLeft % (60 * 60)) / 60)
 local seconds = math.floor(secondsLeft % 60)

 game.Workspace.CountdownPart.SurfaceGui.CountdownText.Text = string.format("%dd %02dh %02dm %02ds", days, hours, minutes, seconds) -- Change CountdownPart to whatever your part is called which has the Countdown on it 
end
while true do
 updateCountdownDisplay()
 wait(1)
end
