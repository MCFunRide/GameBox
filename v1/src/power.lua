os.loadAPI("/apis/graphix")
graphix.bgColor(colors.blue)
term.setBackgroundColor(colors.lightBlue)
term.clearLine()
graphix.centerWrite(1,"Power Options")
term.setBackgroundColor(colors.white)
term.setTextColor(colors.black)
graphix.center(3,"Shutdown")
graphix.center(5,"Reboot")
term.setBackgroundColor(colors.lightGray)
graphix.center(7,"Back")

while true do
  local evt, btn,x, y = os.pullEvent('mouse_click')
  if y == 3 then
    os.shutdown()
  elseif y == 5 then
    os.reboot()
  elseif y == 7 then
    shell.run("/startgui")
  else
    shell.run("/power")
  end
end
