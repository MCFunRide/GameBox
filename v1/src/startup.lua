if fs.exists("/.config") then
  if fs.exists("/startgui") then
    print()
  else
    shell.run("corrupt")
  end
  if fs.exists("/games") then
    print()
  else
    shell.run("corrupt")
  end
  if fs.exists("/continue") then
    print()
  else
    shell.run("corrupt")
  end
  if fs.exists("/about") then
    print()
  else
    shell.run("corrupt")
  end
  shell.run("/.config")
  shell.run("/continue")
else
  f = fs.open("/.config","w")
  term.clear()
  term.setCursorPos(1,1)
  print("GameBox Setup")
  print()
  print("No setup at the moment...")
  f.close()
  sleep(2)
  os.reboot()
end
