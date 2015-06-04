os.loadAPI("/apis/graphix")
graphix.bgColor(colors.black)
graphix.center(8,"The system files are corrupted.")
graphix.center(9,"Please refer to the GameBox Operations Manual")
graphix.center(10,"for help troubleshooting.")
os.pullEvent = os.pullEventRaw
while true do
  sleep(100)
end
