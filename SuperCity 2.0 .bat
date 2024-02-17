:: Supercity © 2023 by Code613 is licensed under CC BY-NC-ND 4.0 
@echo off
title SuperCity 2.0
color 0A

::Save test
:0
if exist nulecho del nulecho
if exist save2.dlb goto start 
if not exist save2.dlb goto start0


::game continue
:start
cls
echo --------------------------------------
echo ------- Welcome in SuperCity! --------
echo --------------------------------------
echo.
echo 1. Start
echo 2. Continue
echo 3. How to play
echo 4. Game info
echo 5. Reset game
echo 6. Change Text Color
echo 7. Quit
set /p "wybieram:=Option:"
if %wybieram:%==1 goto gra
if %wybieram:%==3 goto instrukcja
if %wybieram:%==4 goto info
if %wybieram:%==2 goto load
if %wybieram:%==5 goto reset
if %wybieram:%==6 goto changecolor
if %wybieram:%==7 goto exit
if not %wybieram:%==6 goto start
if not %wybieram:%==1 goto start
if not %wybieram:%==2 goto start
if not %wybieram:%==3 goto start
if not %wybieram:%==4 goto start
if not %wybieram:%==4 goto start
if not %wybieram:%==5 goto start

::game start
:start0
cls
cls
echo --------------------------------------
echo ------- Welcome in SuperCity! --------
echo --------------------------------------
echo.
echo 1. Start
echo 2. How to play
echo 3. Game info
echo 4. Change Text Color
echo 5. Quit
set /p "wybieram:=Option: "
if %wybieram:%==1 goto gra
if %wybieram:%==2 goto instrukcja
if %wybieram:%==3 goto info
if %wybieram:%==4 goto changecolor
if %wybieram:%==5 goto exit
if not %wybieram:%==1 goto start0
if not %wybieram:%==2 goto start0
if not %wybieram:%==3 goto start0
if not %wybieram:%==4 goto start0
if not %wybieram:%==5 goto start0

::Change Color of Text
:changecolor
cls
echo Change Text color
echo Please use capital letters
echo.
echo A - Green
echo B - Light Aqua
echo C - Red
echo D - Light Purple
echo E - Yellow
echo F - Bright White
echo.
set /p "kolor=Option: "
if %kolor%==a color 0%kolor%
if %kolor%==b color 0%kolor%
if %kolor%==c color 0%kolor%
if %kolor%==d color 0%kolor%
if %kolor%==e color 0%kolor%
if %kolor%==f color 0%kolor%
if %kolor%==A color 0%kolor%
if %kolor%==B color 0%kolor%
if %kolor%==C color 0%kolor%
if %kolor%==D color 0%kolor%
if %kolor%==E color 0%kolor%
if %kolor%==F color 0%kolor%
if not %kolor%==a goto 0
if not %kolor%==b goto 0
if not %kolor%==c goto 0
if not %kolor%==d goto 0
if not %kolor%==e goto 0
if not %kolor%==f goto 0
if not %kolor%==A goto 0
if not %kolor%==B goto 0
if not %kolor%==C goto 0
if not %kolor%==D goto 0
if not %kolor%==E goto 0
if not %kolor%==F goto 0
pause>nul
cls
goto 0

::game reset
:reset
del save2.dlb
cls
goto start0

::game load
:load
(
set /p exp=
set /p kasa=
set /p mieszkancy=
set /p iloscdom=
set /p nagrody=
set /p iloscjarmark=
set /p iloscwiezowiec=
set /p iloscapartament=
set /p iloscaltana=
set /p imie=
set /p nazwisko=
set /p waluta=
set /p miasto=
set /p wojewodztwo=
set /p waluta0=
set /p house100ach=
set /p Skyscraper100ach=
set /p Bowers100ach=
set /p Apartments100ach=
set /p Fairs100ach=
set /p house1000ach=
set /p Skyscraper1000ach=
set /p Bowers1000ach=
set /p Apartments1000ach=
set /p Fairs1000ach=
set /p cheats=
)<save2.dlb

set cenadom=200
set cenawiezowiec=350
set cenaapartament=800
set cenaaltana=100
set wyplatamc=500
set cenalotto=50
set wygranalotto=500
set wyplataf=1500
set cenaJarmark=2000
set md=30
set mw=50
set ma=10
set map=120
goto front 


::load error
:load0
cls
echo We couldn't find save file 'save2.dlb'.
echo Please restart the game and try again.
echo. 
echo Press any key to continue.
pause>nul
cls
goto start0

::save test2
:savetest
if exist save2.dlb goto delsave
if not exist save2.dlb goto save

::save1
:save
(
echo %exp%
echo %kasa%
echo %mieszkancy%
echo %iloscdom%
echo %nagrody%
echo %iloscjarmark%
echo %iloscwiezowiec%
echo %iloscapartament%
echo %iloscaltana%
echo %imie%
echo %nazwisko%
echo %waluta%
echo %miasto%
echo %wojewodztwo%
echo %waluta0%
echo %house100ach%
echo %Skyscraper100ach%
echo %Bowers100ach%
echo %Apartments100ach%
echo %Fairs100ach%
echo %house1000ach%
echo %Skyscraper1000ach%
echo %Bowers1000ach%
echo %Apartments1000ach%
echo %Fairs1000ach%
echo %cheats%
)>save2.dlb
goto save4

::remove save
:delsave
del save2.dlb
goto save

::save4
:save4
cls
echo Game saved!
echo Type 1 to continue
echo Type 2 to exit
set /p exit=
if %exit%==1 goto front
goto exitsave

::exit save
:exitsave
(
echo %exp%
echo %kasa%
echo %mieszkancy%
echo %iloscdom%
echo %nagrody%
echo %iloscjarmark%
echo %iloscwiezowiec%
echo %iloscapartament%
echo %iloscaltana%
echo %imie%
echo %nazwisko%
echo %waluta%
echo %miasto%
echo %wojewodztwo%
echo %waluta0%
echo %house100ach%
echo %Skyscraper100ach%
echo %Bowers100ach%
echo %Apartments100ach%
echo %Fairs100ach%
echo %house1000ach%
echo %Skyscraper1000ach%
echo %Bowers1000ach%
echo %Apartments1000ach%
echo %Fairs1000ach%
echo %cheats%
)>save2.dlb
goto exit
:exit
exit



::game info
:info
cls
echo Game Idea - YouTube: DaVinci (Polish Youtuber)
echo Game Creators - YouTube: code613 / EMOJI TV YT 
echo Game Version - 2.0
echo.
echo Game official codeing Lang. - Batch
pause >nul
cls 
goto 0



::How to play
:instrukcja
cls
echo --Story
echo You are the mayor of the city, your job is to take care of
echo the people that live in YOUR city.
echo You have your own cash that can be used to expand the city.
echo Take care of your people and city.
echo.
echo --Controls
echo Select/Ok - Enter - use when you see text "Option: "
echo Skipping - Jst click Any Key
pause>nul
cls
goto 0


::start
:gra
set kasa=1000
set mieszkancy=0
set cenadom=200
set cenawiezowiec=350
set cenaapartament=800
set cenaaltana=100
set iloscdom=0
set wyplatamc=500
set cenalotto=50
set wygranalotto=500
set wyplataf=1500
set cenaJarmark=2000
set md=30
set mw=50
set ma=10
set map=120
set nagrody=0
set iloscjarmark=0
set iloscwiezowiec=0
set iloscapartament=0
set iloscaltana=0
set house100ach=0
set Skyscraper100ach=0
set Bowers100ach=0
set Apartments100ach=0
set Fairs100ach=0
set house1000ach=0
set Skyscraper1000ach=0
set Bowers1000ach=0
set Apartments1000ach=0
set Fairs1000ach=0
set cheats=0
cls
echo What is your name?:
set /p "imie=>> "
cls
echo What is your surname?:
set/p "nazwisko=>> "
cls
echo Welcome %imie% %nazwisko% ! Now you're the new mayor of your city!
echo.
pause>nul
echo How will your city be called?
set /p "miasto=>> "
cls
echo In which voivodeship will your city be located?
set/p "wojewodztwo=>> "
cls
echo What will your currency be called. Enter its name, not symbol.
set/p "waluta0=>> "
set waluta=%waluta0%s
cls
echo Here you have: 1000 %waluta%, go and build your first building.
pause
goto front


::auto save
:front
(
echo %exp%
echo %kasa%
echo %mieszkancy%
echo %iloscdom%
echo %nagrody%
echo %iloscjarmark%
echo %iloscwiezowiec%
echo %iloscapartament%
echo %iloscaltana%
echo %imie%
echo %nazwisko%
echo %waluta%
echo %miasto%
echo %wojewodztwo%
echo %waluta0%
echo %house100ach%
echo %Skyscraper100ach%
echo %Bowers100ach%
echo %Apartments100ach%
echo %Fairs100ach%
echo %house1000ach%
echo %Skyscraper1000ach%
echo %Bowers1000ach%
echo %Apartments1000ach%
echo %Fairs1000ach%
echo %cheats%
)>save2.dlb
goto gra0


::Menu
:gra0
if %kasa%==-20 goto debet
if %kasa%==-30 goto debet
if %kasa%==-40 goto debet
if %kasa%==-50 goto debet
if %kasa%==-60 goto debet
if %kasa%==-70 goto debet
if %kasa%==-80 goto debet
if %kasa%==-90 goto debet
if %kasa%==-100 goto debet
if %kasa%==-110 goto debet
if %kasa%==-120 goto debet
if %kasa%==-130 goto debet
if %kasa%==-140 goto debet
if %kasa%==-150 goto debet
if %kasa%==-160 goto debet
if %kasa%==-170 goto debet
if %kasa%==-180 goto debet
if %kasa%==-190 goto debet
if %kasa%==-200 goto debet
if %kasa%==-210 goto debet
if %kasa%==-220 goto debet
if %kasa%==-230 goto debet
if %kasa%==-240 goto debet
if %kasa%==-250 goto debet
if %kasa%==-260 goto debet
if %kasa%==-270 goto debet
if %kasa%==-280 goto debet
if %kasa%==-290 goto debet
if %kasa%==-300 goto debet
if %kasa%==-310 goto debet
if %kasa%==-320 goto debet
if %kasa%==-330 goto debet
if %kasa%==-340 goto debet
if %kasa%==-350 goto debet
if %kasa%==-360 goto debet
if %kasa%==-370 goto debet
if %kasa%==-380 goto debet
if %kasa%==-390 goto debet
if %kasa%==-400 goto debet
if %kasa%==-410 goto debet
if %kasa%==-420 goto debet
if %kasa%==-430 goto debet
if %kasa%==-440 goto debet
if %kasa%==-450 goto debet
if %kasa%==-460 goto debet
if %kasa%==-470 goto debet
if %kasa%==-480 goto debet
if %kasa%==-490 goto debet
if %kasa%==-500 goto debet
if %kasa%==-510 goto debet
if %kasa%==-520 goto debet
if %kasa%==-530 goto debet
if %kasa%==-540 goto debet
if %kasa%==-550 goto debet
if %kasa%==-560 goto debet
if %kasa%==-570 goto debet
if %kasa%==-580 goto debet
if %kasa%==-590 goto debet
if %kasa%==-600 goto debet
if %kasa%==-610 goto debet
if %kasa%==-620 goto debet
if %kasa%==-630 goto debet
if %kasa%==-640 goto debet
if %kasa%==-650 goto debet
if %kasa%==-660 goto debet
if %kasa%==-670 goto debet
if %kasa%==-680 goto debet
if %kasa%==-690 goto debet
if %kasa%==-700 goto debet
if %kasa%==-710 goto debet
if %kasa%==-720 goto debet
if %kasa%==-730 goto debet
if %kasa%==-740 goto debet
if %kasa%==-750 goto debet
if %kasa%==-760 goto debet
if %kasa%==-770 goto debet
if %kasa%==-780 goto debet
if %kasa%==-790 goto debet
if %mieszkancy%==1000 goto winner
if %mieszkancy%==1010 goto winner
if %mieszkancy%==1020 goto winner
if %mieszkancy%==1030 goto winner
if %mieszkancy%==1040 goto winner
if %mieszkancy%==1050 goto winner
if %mieszkancy%==1060 goto winner
if %mieszkancy%==1070 goto winner
if %mieszkancy%==1080 goto winner
if %mieszkancy%==1090 goto winner
if %mieszkancy%==1100 goto winner
if %mieszkancy%==1110 goto winner
if %mieszkancy%==1120 goto winner
if %mieszkancy%==1130 goto winner
if %mieszkancy%==1140 goto winner
if %mieszkancy%==1150 goto winner
if %mieszkancy%==1160 goto winner
if %mieszkancy%==1170 goto winner
if %mieszkancy%==1180 goto winner
if %mieszkancy%==1190 goto winner
if %mieszkancy%==1200 goto winner
if %mieszkancy%==10000 goto winner2
if %mieszkancy%==10010 goto winner2
if %mieszkancy%==10020 goto winner2
if %mieszkancy%==10030 goto winner2
if %mieszkancy%==10040 goto winner2
if %mieszkancy%==10050 goto winner2
if %mieszkancy%==10060 goto winner2
if %mieszkancy%==10070 goto winner2
if %mieszkancy%==10080 goto winner2
if %mieszkancy%==10090 goto winner2
if %mieszkancy%==10100 goto winner2
if %mieszkancy%==10110 goto winner2
if %mieszkancy%==10120 goto winner2
if %mieszkancy%==10130 goto winner2
if %mieszkancy%==10140 goto winner2
if %mieszkancy%==10150 goto winner2
if %mieszkancy%==10160 goto winner2
if %mieszkancy%==10170 goto winner2
if %mieszkancy%==10180 goto winner2
if %mieszkancy%==10190 goto winner2
if %mieszkancy%==10200 goto winner2
if %mieszkancy%==100000 goto winner3
if %mieszkancy%==100010 goto winner3
if %mieszkancy%==100020 goto winner3
if %mieszkancy%==100030 goto winner3
if %mieszkancy%==100040 goto winner3
if %mieszkancy%==100050 goto winner3
if %mieszkancy%==100060 goto winner3
if %mieszkancy%==100070 goto winner3
if %mieszkancy%==100080 goto winner3
if %mieszkancy%==100090 goto winner3
if %mieszkancy%==100100 goto winner3
if %mieszkancy%==100110 goto winner3
if %mieszkancy%==100120 goto winner3
if %mieszkancy%==100130 goto winner3
if %mieszkancy%==100140 goto winner3
if %mieszkancy%==100150 goto winner3
if %mieszkancy%==100160 goto winner3
if %mieszkancy%==100170 goto winner3
if %mieszkancy%==100180 goto winner3
if %mieszkancy%==100190 goto winner3
if %mieszkancy%==100200 goto winner3
if %iloscdom%==1000 goto house1000ach
if %iloscwiezowiec%==1000 goto Skyscraper1000ach
if %iloscaltana%==1000 goto Bowers1000ach
if %iloscapartament%==1000 goto Apartments1000ach
if %iloscjarmark%==1000 goto Fairs1000ach
if %iloscdom%==100 goto house100ach
if %iloscwiezowiec%==100 goto Skyscraper100ach
if %iloscaltana%==100 goto Bowers100ach
if %iloscapartament%==100 goto Apartments100ach
if %iloscjarmark%==100 goto Fairs100ach
cls
echo ####################################################################
echo #### INFO: Money: %kasa% %waluta%, Residents:%mieszkancy%  ###########
echo ## Houses:%iloscdom% ## Skyscrapers:%iloscwiezowiec% ## Bowers:%iloscaltana% ## Apartments:%iloscapartament%## Fairs:%iloscjarmark%##
echo ######## number of awards %nagrody% ## exp %exp% #######
echo ####################################################################
if %cheats%==1 echo Bonus used
if not %cheats%==1 echo.
echo.
echo Things that you can build:
echo 1. A House (Cost: %cenadom% %waluta%)
echo 2. A Skyscraper (Cost: %cenawiezowiec% %waluta%)
echo 3. A Bower (Cost: %cenaaltana% %waluta%)
echo 4. An Apartament (Cost: %cenaapartament% %waluta%)
echo 5. Work
echo 6. Play LOTTO
echo 7. Fair
echo 8. Advancments
echo 9. Save game
set /p "wybieram:=Option: "
if %wybieram:%==1 goto checkdom
if %wybieram:%==2 goto checkwiezowiec
if %wybieram:%==3 goto checkaltana
if %wybieram:%==4 goto checkapartament
if %wybieram:%==5 goto praca
if %wybieram:%==6 goto lotto
if %wybieram:%==7 goto Jarmark
if %wybieram:%==8 goto advancments
if %wybieram:%==9 goto save
if %wybieram:%==2137 goto BONUS
if %wybieram:%==69 goto nice
if not %wybieram:%==1 goto front
if not %wybieram:%==2 goto front
if not %wybieram:%==3 goto front
if not %wybieram:%==4 goto front
if not %wybieram:%==5 goto front
if not %wybieram:%==6 goto front
if not %wybieram:%==7 goto front
if not %wybieram:%==8 goto front
if not %wybieram:%==9 goto front
if not %wybieram:%==2137 goto front
if not %wybieram:%==69 goto front

::Funny Secret
:nice
cls
echo Nice
echo You Gained 69 %waluta%!
set /a kasa=kasa+69
ping localhost -n 5 >nul
cls
set /a kasa=kasa-69
echo To prevent "Infinite Money Glitch":
echo You lost 69 %waluta%!
pause >nul
goto front


::Advancments
:advancments
cls
echo.
echo.
echo [Advancments]
echo.
echo.
if %house100ach%==1 echo [1] 100 houses advancment unlocked
if not %house100ach%==1 echo [1] You must have 100 houses to unlock this advancment
echo.
if %Skyscraper100ach%==1 echo [2] 100 skyscrapers advancment unlocked
if not %Skyscraper100ach%==1 echo [2] You must have 100 skyscrapers to unlock this advancment
echo.
if %Bowers100ach%==1 echo [3] 100 bowers advancment unlocked
if not %Bowers100ach%==1 echo [3] You must have 100 bowers to unlock this advancment
echo.
if %Apartments100ach%==1 echo [4] 100 apartaments advancment unlocked
if not %Apartments100ach%==1 echo [4] You must have 100 apartaments to unlock this advancment
echo.
if %Fairs100ach%==1 echo [5] 100 fairs advancment unlocked
if not %Fairs100ach%==1 echo [5] You must have 100 fairs to unlock this advancment
echo.
if %house1000ach%==1 echo [6] 1000 houses advancment unlocked
if not %house1000ach%==1 echo [6] You must have 1000 houses to unlock this advancment
echo.
if %Skyscraper1000ach%==1 echo [7] 1000 skyscrapers advancment unlocked
if not %Skyscraper1000ach%==1 echo [7] You must have 1000 skyscrapers to unlock this advancment
echo.
if %Bowers1000ach%==1 echo [8] 1000 bowers advancment unlocked
if not %Bowers1000ach%==1 echo [8] You must have 1000 bowers to unlock this advancment
echo.
if %Apartments1000ach%==1 echo [9] 1000 apartaments advancment unlocked
if not %Apartments1000ach%==1 echo [9] You must have 1000 apartaments to unlock this advancment
echo.
if %Fairs1000ach%==1 echo [10] 1000 fairs advancment unlocked
if not %Fairs1000ach%==1 echo [10] You must have 1000 fairs to unlock this advancment
echo.
pause 
goto front


::Skyscraper advancment2
:Skyscraper100ach
cls
echo.
echo New advancment unlocked (100 Skyscraper)
echo +10000 exp
echo +10000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+10000
set Skyscraper100ach=1
set /a exp=exp+10000
set /a iloscwiezowiec=iloscwiezowiec+1
cls 
goto front

::houses advancment2
:house100ach
cls
echo.
echo New advancment unlocked (100 houses)
echo +10000 exp
echo +10000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+10000
set house100ach=1 
set /a exp=exp+10000
set /a iloscdom=iloscdom+1
cls 
goto front

::Bowers advancment2
:Bowers100ach
cls
echo.
echo New advancment unlocked (100 Bowers)
echo +10000 exp
echo +10000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+10000
set Bowers100ach=1
set /a exp=exp+10000
set /a iloscaltana=iloscaltana+1
cls 
goto front

::Apartaments advancment2
:Apartments100ach
cls
echo.
echo New advancment unlocked (100 Apartaments)
echo +10000 exp
echo +10000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+10000
set Apartments100ach=1
set /a exp=exp+10000
set /a iloscapartament=iloscapartament+1
cls 
goto front

::Fairs advancment2
:Fairs100ach
cls
echo.
echo New advancment unlocked (100 Fairs)
echo +10000 exp
echo +10000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+10000
set Fairs100ach=1
set /a exp=exp+10000
set /a iloscjarmark=iloscjarmark+1
cls 
goto front



::Skyscraper advancment
:Skyscraper1000ach
cls
echo.
echo New advancment unlocked (1000 Skyscraper)
echo +100000 exp
echo +100000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+100000
set Skyscraper1000ach=1
set /a exp=exp+100000
set /a iloscwiezowiec=iloscwiezowiec+1
cls 
goto front

::houses advancment
:house1000ach
cls
echo.
echo New advancment unlocked (1000 houses)
echo +100000 exp
echo +100000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+100000
set house1000ach=1 
set /a exp=exp+100000
set /a iloscdom=iloscdom+1
cls 
goto front

::Bowers advancment
:Bowers1000ach
cls
echo.
echo New advancment unlocked (1000 Bowers)
echo +100000 exp
echo +100000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+100000
set Bowers1000ach=1
set /a exp=exp+100000
set /a iloscaltana=iloscaltana+1
cls 
goto front

::Apartaments advancment
:Apartments1000ach
cls
echo.
echo New advancment unlocked (1000 Apartaments)
echo +100000 exp
echo +100000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+100000
set Apartments1000ach=1
set /a exp=exp+100000
set /a iloscapartament=iloscapartament+1
cls 
goto front

::Fairs advancment
:Fairs1000ach
cls
echo.
echo New advancment unlocked (1000 Fairs)
echo +1000000 exp
echo +1000000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+1000000
set Fairs1000ach=1
set /a exp=exp+1000000
set /a iloscjarmark=iloscjarmark+1
cls 
goto front


::fair
:Jarmark 
cls
echo The fair will bring profit in 24 hours
ping localhost-n 1 >nul
echo 23h
ping localhost-n 1 >nul
echo 22h
ping localhost-n 1 >nul
echo 21h
ping localhost-n 1 >nul
echo 20h
ping localhost-n 1 >nul
echo 19h
ping localhost-n 1 >nul
echo 18h
ping localhost-n 1 >nul
echo 17h
ping localhost-n 1 >nul
echo 16h
ping localhost-n 1 >nul
echo 15h
ping localhost-n 1 >nul
echo 14h
ping localhost-n 1 >nul
echo 13h
ping localhost-n 1 >nul
echo 12h
ping localhost-n 1 >nul
echo 11h
ping localhost-n 1 >nul
echo 10h
ping localhost-n 1 >nul
echo 9h
ping localhost-n 1 >nul
echo 8h
ping localhost-n 1 >nul
echo 7h 
ping localhost-n 1 >nul
echo 6h
ping localhost-n 1 >nul
echo 5h
ping localhost-n 1 >nul
echo 4h
ping localhost-n 1 >nul
echo 3h
ping localhost-n 1 >nul
echo 2h
ping localhost-n 1 >nul
echo 1h 
ping localhost-n 1 >nul
cls
set randomfaircash=%random:~0,4%
echo You earned %randomfaircash% %waluta%. at the Fair.
echo +200 exp 
set /a kasa=kasa+%randomfaircash%
set /a exp=exp+200
ping localhost -n 1 >nul
set randomfaircash=0
pause>nul
goto front 


::bonus
:bonus 
set /a kasa=kasa+100000000
set /a ex=exp+10000
set /a iloscaltana=iloscaltana+900
set /a iloscapartament= iloscapartament+900
set /a iloscdom=iloscdom+900
set /a iloscjarmark=iloscjarmark+900
set /a iloscwiezowiec=iloscwiezowiec+900
set /a cheats=1
goto front 


::buy house
:checkdom
set /a kasa=kasa-cenadom
set /a mieszkancy=mieszkancy+md
set /a iloscdom=iloscdom+1
set /a exp=exp+50
goto front


::buy apartament
:checkapartament
set /a kasa=kasa-cenaapartament
set /a mieszkancy=mieszkancy+map
set /a iloscapartament=iloscapartament+1
set /a exp=exp+50
goto front


::buy Skyscraper
:checkwiezowiec
set /a kasa=kasa-cenawiezowiec
set /a mieszkancy=mieszkancy+mw
set /a iloscwiezowiec=iloscwiezowiec+1
set /a exp=exp+50
goto front


::buy altana
:checkaltana
set /a kasa=kasa-cenaaltana
set /a mieszkancy=mieszkancy+ma
set /a iloscaltana=iloscaltana+1
set /a exp=exp+50
goto front

::debet
:debet
cls
echo Unfortunately, you have indebted your city to the amount of %kasa%! Interest will increase
echo You have to go to work!
pause>nul
goto praca2

::work2
:praca2
cls
echo.
echo.									
echo Where do you want to work?
echo 1. Factory (1500 %waluta%)
echo 2. McDonald (500 %waluta%)
echo 3. Computer specialist (2000 %waluta%)
echo 4. Hacker (5000-20000k %waluta%)
echo 5. a clothing store (500 %waluta%)
echo 6. Photographer (500 %waluta%)
echo.
set /p "wybieram:=Option: "
if %wybieram:%==1 goto fabryka
if %wybieram:%==2 goto mcdonald
if %wybieram:%==3 goto inf
if %wybieram:%==4 goto hack
if %wybieram:%==5 goto ubrania
if %wybieram:%==6 goto Foto
if not %wybieram:%==1 goto praca
if not %wybieram:%==2 goto praca
if not %wybieram:%==3 goto praca
if not %wybieram:%==4 goto praca
if not %wybieram:%==5 goto praca
if not %wybieram:%==6 goto praca
goto praca2

::work
:praca
cls
echo.
echo.									
echo As who do you want to work?
echo 1. Factory Worker (1500 %waluta%)
echo 2. McDonald's Worker (500 %waluta%)
echo 3. Computer Specialist (2000 %waluta%)
echo 4. Hacker (5000-20000k %waluta%)
echo 5. Clotheing Shop  Worker (500 %waluta%)
echo 6. Photographer (500 %waluta%)
echo.
echo 7. Back
set /p "wybieram:=Option: "
if %wybieram:%==1 goto fabryka
if %wybieram:%==2 goto mcdonald
if %wybieram:%==3 goto inf
if %wybieram:%==4 goto hack
if %wybieram:%==5 goto ubrania
if %wybieram:%==6 goto Foto
if %wybieram:%==7 goto front
if not %wybieram:%==1 goto praca
if not %wybieram:%==2 goto praca
if not %wybieram:%==3 goto praca
if not %wybieram:%==4 goto praca
if not %wybieram:%==5 goto praca
if not %wybieram:%==6 goto praca
if not %wybieram:%==7 goto praca
goto praca

::photograph
:foto
cls
echo Hello, I see you need quick cash?
pause>nul
echo You just need to be a good worker, 
echo You will get 500 %waluta%. Press enter.
pause>nul
cls
echo Wait 5 hours.
ping localhost-n 1 >nul
echo Wait 4 hours.
ping localhost-n 1 >nul
echo Wait 3 hours.
ping localhost-n 1 >nul
echo Wait 2 hours.
ping localhost-n 1 >nul
echo Wait 1 hour.
ping localhost-n 1 >nul
echo You've finished your work. You earn 500 %waluta%.
echo +100 exp
pause>nul
set /a kasa=kasa+500
set /a exp=exp+100
goto front


::clothes
:ubrania 
cls
echo Hello, I see you need quick cash?
pause>nul
echo You just need to be a good worker, 
echo You will get 500 %waluta%. Press enter.
pause>nul
cls
echo Wait 8 hours.
ping localhost-n 1 >nul
echo Wait 7 hours.
ping localhost-n 1 >nulecho 
echo Wait 6 hours..
ping localhost-n 1 >nul
echo Wait 5 hours.
ping localhost-n 1 >nul
echo Wait 4 hours.
ping localhost-n 1 >nul
echo Wait 3 hours.
ping localhost-n 1 >nul
echo Wait 2 hours.
ping localhost-n 1 >nul
echo Wait 1 hour.
ping localhost-n 1 >nul
echo You've finished your work. You earn 500 %waluta%.
echo +100 exp
pause>nul
set /a kasa=kasa+500
set /a exp=exp+100
goto front


::hacking
:hack
cls
echo Choose how much you want to hack.
echo.
echo 1. 5000  %waluta% 	Time 60h
echo 2. 10000 %waluta% 	Time 120h
echo 3. 15000 %waluta% 	Time 180h
echo 4. 20000 %waluta% 	Time 240h
set /p "wybieram:=Option: "
if %wybieram:%==1 goto h1
if %wybieram:%==2 goto h2
if %wybieram:%==3 goto h3
if %wybieram:%==4 goto h4
if not %wybieram:%==1 goto praca
if not %wybieram:%==2 goto praca
if not %wybieram:%==3 goto praca
if not %wybieram:%==4 goto praca

:h1
cls
echo hacking.
echo    0%
ping localhost-n 15 >nul
cls
echo hacking..
echo   25%
ping localhost-n 15 >nul
cls
echo hacking...
echo   50%
ping localhost-n 15 >nul
cls
echo hacking.
echo   75%
ping localhost-n 15 >nul
cls
echo hacking complete.
echo         100%
ping localhost-n 10 >nul
echo +100 exp
pause
set /a exp=exp+100
set /a kasa=kasa+5000
cls
goto front

:h2
cls
echo Hacking.
echo    0%
ping localhost-n 15 >nul
cls
echo Hacking..
echo   25%
ping localhost-n 30 >nul
cls
echo Hacking...
echo   50%
ping localhost-n 30 >nul
cls
echo Hacking.
echo   75%
ping localhost-n 30 >nul
cls
echo Hacking..
echo         100%
ping localhost-n 10 >nul
echo +200 exp
pause
set /a exp=exp+200
set /a kasa=kasa+10000
cls
goto front

:h3
cls
echo hacking.
echo    0%
ping localhost-n 45 >nul
cls
echo hacking..
echo   25%
ping localhost-n 45 >nul
cls
echo hacking...
echo   50%
ping localhost-n 45 >nul
cls
echo hacking.
echo   75%
ping localhost-n 45 >nul
cls
echo hacking complete
echo         100%
ping localhost-n 10 >nul
echo +100 exp
pause
set /a exp=exp+300
set /a kasa=kasa+15000
cls
goto front

:h4
cls
echo hacking.
echo    0%
ping localhost-n 60 >nul
cls
echo hacking..
echo   25%
ping localhost-n 60 >nul
cls
echo hacking...
echo   50%
ping localhost-n 60 >nul
cls
echo hacking.
echo   75%
ping localhost-n 60 >nul
cls
echo hacking complete
echo         100%
ping localhost-n 10 >nul
echo +100 exp
pause
set /a exp=exp+400
set /a kasa=kasa+20000
cls
goto front


:inf
cls
echo Welcome in Supercity Studio!
pause
echo Don't think we'll give you 2000 %waluta% for nothing!
pause
echo You must answer 3 questions correctly to get 2000 %waluta%.
pause
cls
goto p1

:p1
cls
echo 1. Who created microsoft?
echo.
echo 1. Kuba klawiter
echo 2. Robert lewandoski
echo 3. Bill Gates
echo 4. Peter Henderson
set /p "odpowiedz:=Option: "
if %odpowiedz:%==3 goto p2
if NOT %odpowiedz:%==3 goto zle

:p2
cls
echo 2. Which language can be programmed in the ms notebook
echo.
echo 1. c++
echo 2. Batch
echo 3. C#
echo 4. scratch
set /p "odpowiedz:=Option: "
if %odpowiedz:%==2 goto p3
if NOT %odpowiedz:%==2 goto zle

:p3
cls
echo 3. What does the dir / s command in cmd mean.
echo.
echo 1. Deletes files 
echo 2. Creates a new folder
echo 3. Display the names of system files
echo 4. Destroys the computer
set /p "odpowiedz:=Option: "
if %odpowiedz:%==3 goto dobrze
if NOT %odpowiedz:%==3 goto zle
 
:zle
cls
echo unfortunately you answered wrongly
pause
goto front

:dobrze
cls
set /a kasa=kasa+2000
set /a exp=exp+100
echo You managed to answer all the questions!
pause>nul
echo Here's your salary of 2000 %waluta%.
pause>nul
echo See you later!
pause>nul
echo +100 exp
pause
cls
goto front

::factory
:fabryka
cls
echo Welcome to the factory!
pause>nul
echo Don't think we'll give you 1500 %waluta% for nothing!
pause>nul
echo You must answer 3 questions correctly to get 1500%waluta%.
pause
cls
goto f1

:f1
cls
echo 1. What's the name of the actor who played Mike Wheeler on the TV series "Stranger Things"?
echo 1. Johny Brawo
echo 2. Will Byers
echo 3. Finn Wolfhard
echo 4. Peter Henderson
set /p "odpowiedz:=Option: "
if %odpowiedz:%==3 goto f2
if NOT %odpowiedz:%==3 goto fbad

:fbad
cls
echo Wrong answer!
pause
cls
goto f3

:f3
cls
echo Last question!
pause>nul
echo 3. The Bombay cat is colored:
echo 1. Gray
echo 2. Brown
echo 3. White
echo 4. Black
echo 5. Other
set /p "odpowiedz:=Option: "
if %odpowiedz:%==4 goto fend
if NOT %odpowiedz:%==4 goto fbad

:fend
cls
set /a kasa=kasa+wyplataf
echo You managed to answer all the questions!
pause>nul
echo Here's your salary of 1500 %waluta%.
pause>nul
echo +100 exp
pause
set /a exp=exp+100
cls
goto front


::MC
:mcdonald
cls
echo Hello, I see you need quick cash?
pause>nul
echo You just need to be a good worker, 
echo You will get 500 %waluta%. okay?
pause
cls
echo You work 8 hours, wait.
ping localhost-n 1 >nul
echo You work 7 hours, wait.
ping localhost-n 1 >nulecho 
echo You work 6 hours, wait.
ping localhost-n 1 >nul
echo You work 5 hours, wait.
ping localhost-n 1 >nul
echo You work 4 hours, wait.
ping localhost-n 1 >nul
echo You work 3 hours, wait.
ping localhost-n 1 >nul
echo You work 2 hours, wait.
ping localhost-n 1 >nul
echo You work 1 hour, wait.
ping localhost-n 1 >nul
echo You've finished your work. You earned 500 %waluta%.
echo +100 exp
pause>nul
set /a kasa=kasa+wyplatamc
set /a exp=exp+100
goto front

:winner
cls
echo THE NUMBER OF RESIDENTS IN YOUR CITY IS 10,000!
echo CONGRATULATIONS!!!
echo you get +1000 inhabitants and 1000 %waluta%
pause>nul
set /a mieszkancy=mieszkancy+1000
set /a kasa=kasa+1000
set /a nagrody=nagrody+1 
set /a exp=exp+1000
cls
goto front




:winner2
cls
echo THE NUMBER OF RESIDENTS IN YOUR CITY IS 100000!
echo CONGRATULATIONS!!!
echo you get +10000 inhabitants and 10000.
echo +10000 exp
pause>nul
set /a mieszkancy=mieszkancy+10000
set /a kasa=kasa+10000
set /a nagrody=nagrody+1 
set /a exp=exp+10000
cls
goto front

:winner3
cls
echo THE NUMBER OF RESIDENTS IN YOUR CITY IS 100000!
echo CONGRATULATIONS!!!
echo you get +100000 inhabitants and 100000. 
echo +100000 exp
pause>nul
set /a mieszkancy=mieszkancy+100000
set /a kasa=kasa+100000
set /a nagrody=nagrody+1 
set /a exp=exp+100000
cls
goto front


::Lotto
:lotto
if %kasa%==-20 goto debet
if %kasa%==-30 goto debet
if %kasa%==-40 goto debet
if %kasa%==-50 goto debet
if %kasa%==-60 goto debet
if %kasa%==-70 goto debet
if %kasa%==-80 goto debet
cls
set /a kasa=kasa-cenalotto
set /a losowa=(%random% %%10)
if %losowa%==0 goto lotto
echo The coupon costs 50 %waluta%. The amount has been debited from the account.
pause>nul
echo Current account balance: %kasa% %waluta%
pause
echo Guess the number from the range (1-10)!
set /p liczba=Number:
if %liczba%==%losowa% goto winnerlotto
if not %liczba%==%losowa% goto loserlotto


::lotto win
:winnerlotto
cls
set /a kasa=kasa+wygranalotto
set /a exp=exp+500
echo You win %losowa%! You have won 500 %waluta%!
echo +500 exp
pause>nul
echo Your current account balance is %kasa% %waluta%.
pause>nul
cls
echo Do you want to play again?
echo 1. Yes
echo 2. No
set /p "wybieram:=Option: "
if %wybieram:%==1 goto lotto
if %wybieram:%==2 goto front
if not %wybieram:%==1 goto front
if not %wybieram:%==2 goto front

::lotto lose
:loserlotto
cls
echo You lose!
echo +50 exp 
pause>nul
set /a exp=exp+50
cls
echoDo you want to play again?
echo 1. Yes
echo 2. No
set /p "wybieram:=Option: "
if %wybieram:%==1 goto lotto
if %wybieram:%==2 goto front
if not %wybieram:%==1 goto front
if not %wybieram:%==2 goto front