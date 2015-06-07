os.loadAPI("/apis/graphix")
term.setTextColor(colors.white)
graphix.bgColor(colors.blue)
term.setCursorPos(1,1)
term.setBackgroundColor(colors.lightBlue)
term.clearLine()
term.setCursorPos(1,19)
term.clearLine()
graphix.centerWrite(19,"GameBox by Aperture")
term.setCursorPos(1,1)
graphix.centerWrite(1,"GameBox by Aperture")
term.setCursorPos(1,3)
term.setBackgroundColor(colors.green)
graphix.center(3,"Games")
graphix.center(5,"Floppy Games")
graphix.center(7,"About")
graphix.center(9,"Power")
while true do
  local evt, button, x, y = os.pullEvent('mouse_click')
  if y == 3 then
    shell.run("games")
  elseif y == 5 then
    if fs.exists("/disk/.game") then
      term.setBackgroundColor(colors.black)
      term.clear()
      shell.run("/disk/.game")
    else
      shell.run("/startgui")
    end
  elseif y == 7 then
    shell.run("about")
  elseif y == 9 then
    shell.run("power")
  else
    shell.run("startgui")
  end
end
