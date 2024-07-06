local targetDate = os.time({year=2024, month=7, day=22, hour=7, min=0, sec=0}) -- Change the date to when you want the countdown to end
function updateCountdownDisplay()
 local Time = os.date("!*t", os.time() - 7* 60 * 60)  
 local currentDate = os.time(Time)
 local secondsLeft = targetDate - currentDate
 local days = math.floor(secondsLeft / (24 * 60 * 60))
 local hours = math.floor((secondsLeft % (24 * 60 * 60)) / (60 * 60))
 local minutes = math.floor((secondsLeft % (60 * 60)) / 60)
 local seconds = math.floor(secondsLeft % 60)

 return string.format("%dd %02dh %02dm %02ds", days, hours, minutes, seconds) 
end
while true do
 updateCountdownDisplay()
 wait(1)
end
