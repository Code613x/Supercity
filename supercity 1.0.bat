:: Supercity © 2024 by Code613 is licensed under CC BY-NC-ND 4.0 
@echo off
title SuperCity 1.0
color 0A
:0
if exist  nulecho del nulecho
if exist save1.dlb goto start 
if not exist save1.dlb goto start0
:start
cls
echo --------------------------------------
echo ------ Welcome in SuperCity! -------
echo --------------------------------------
echo.
echo.
echo.
echo 1. Start
echo 2. Continue
echo 3. How to play
echo 4. Game info
echo 5. Reset game
echo 6. Quit
set /p wybieram:={1;2;3;4}:
if %wybieram:%==1 goto gra
if %wybieram:%==3 goto instrukcja
if %wybieram:%==4 goto info
if %wybieram:%==2 goto load
if %wybieram:%==5 goto reset
if %wybieram:%==6 goto exit
if not %wybieram:%==6 goto start
if not %wybieram:%==1 goto start
if not %wybieram:%==2 goto start
if not %wybieram:%==3 goto start
if not %wybieram:%==4 goto start
if not %wybieram:%==5 goto start

:start0
cls
cls
echo --------------------------------------
echo ------ Welcome in SuperCity! -------
echo --------------------------------------
echo.
echo.
echo.
echo 1. Start
echo 2. How to play
echo 3. Game info
echo 4. Quit
set /p wybieram:={1;2;3;4}:
if %wybieram:%==1 goto gra
if %wybieram:%==2 goto instrukcja
if %wybieram:%==3 goto info
if %wybieram:%==4 goto exit
if not %wybieram:%==1 goto start
if not %wybieram:%==2 goto start
if not %wybieram:%==3 goto start
if not %wybieram:%==4 goto start

:reset
del save1.dlb
cls
goto start0


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
)<save1.dlb

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

:load0
cls
echo We cant find save1.dlb 
echo Press any key to continue 
pause>nul
cls
goto start

:savetest
if exist save1.dlb goto delsave
if not exist save1.dlb goto save
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
)>save1.dlb
goto save4

:delsave
del save1.dlb
goto save

:save4
cls
echo Game saved!
echo Type 1 to continue
echo Type 2 to exit
set /p exit=
if %exit%==1 goto front
goto exitsave

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
)>save1.dlb
goto exit
:exit
exit




:info
cls
echo (Idea Davinci)
echo Game made by code613
echo Version 1.0
pause>nul
cls 
goto start




:instrukcja
cls
echo You are the mayor of the city, your job is to take care of the inhabitants. 
pause>nul
echo You have your own cash that can be used to expand the city.
pause>nul
echo Take care of your inhabitants.
pause>nul
cls
goto start


:clicker
cls
echo.
echo CLICKER
echo.
echo masz %kasa% %waluta%
echo klikniencia %click%
echo.
echo wpisz 1 by wyjsc
echo.
call clicker.vbs
set/a click+=1
set/a kasa+=1
goto clicker







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
cls
echo What is your name?:
set /p "imie=>> "
cls
echo What is your surname?:
set/p "nazwisko=>> "
cls
echo Welcome %imie% %nazwisko% ! As of today, you are the new mayor of this city!
echo.
pause>nul
echo What will your city be called?
set /p "miasto=>> "
cls
echo In which voivodeship will your city be located?
set/p "wojewodztwo=>> "
cls
echo What will your currency be called. Enter its name in a singular, like a dollar.
set/p "waluta0=>> "
set waluta=%waluta0%ow
cls
echo Take 1000 %waluta% and build your first building.
pause
goto front

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
)>save1.dlb
goto gra0

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


cls
echo ####################################################################
echo #### INFO: money: %kasa% %waluta%, residents:%mieszkancy%  ###########
echo ############### Game created by code613 ####################
echo ## Houses:%iloscdom% ## skyscrapers:%iloscwiezowiec% ## gazebos:%iloscaltana% ## apartments:%iloscapartament%##Fairs:%iloscjarmark%##
echo ######## number of prizes %nagrody% ## exp %exp% #######
echo ####################################################################
echo. 
echo.
echo 1. Build a house (%cenadom% %waluta%)
echo 2. Build a skyscraper (%cenawiezowiec% %waluta%)
echo 3. Build a gazebo (%cenaaltana% %waluta%)
echo 4. Build an apartment (%cenaapartament% %waluta%)
echo 5. Work
echo 6. Play LOTTO
echo 7. Fair
echo 8. Save game
set /p wybieram:={1;2;3;4;5,6,7,8}:
if %wybieram:%==1 goto checkdom
if %wybieram:%==2 goto checkwiezowiec
if %wybieram:%==3 goto checkaltana
if %wybieram:%==4 goto checkapartament
if %wybieram:%==5 goto praca
if %wybieram:%==6 goto lotto
if %wybieram:%==7 goto Jarmark
if %wybieram:%==8 goto save
if %wybieram:%==2000 goto BONUS
if not %wybieram:%==1 goto front
if not %wybieram:%==2 goto front
if not %wybieram:%==3 goto front
if not %wybieram:%==4 goto front
if not %wybieram:%==5 goto front
if not %wybieram:%==6 goto front
if not %wybieram:%==7 goto front
if not %wybieram:%==8 goto front
if not %wybieram:%==1918 goto front


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
echo You earned as much as 4,000 %waluta%. at the Fair.
echo +200 exp 
set /a kasa=kasa+4000
set /a exp=exp+200
pause>nul
goto front 

:bonus 
set /a kasa=kasa+10000000
goto front 



:checkdom
set /a kasa=kasa-cenadom
set /a mieszkancy=mieszkancy+md
set /a iloscdom=iloscdom+1
set /a exp=exp+50
goto front





:checkapartament
set /a kasa=kasa-cenaapartament
set /a mieszkancy=mieszkancy+map
set /a iloscapartament=iloscapartament+1
set /a exp=exp+50
goto front




:checkwiezowiec
set /a kasa=kasa-cenawiezowiec
set /a mieszkancy=mieszkancy+mw
set /a iloscwiezowiec=iloscwiezowiec+1
set /a exp=exp+50
goto front





:checkaltana
set /a kasa=kasa-cenaaltana
set /a mieszkancy=mieszkancy+ma
set /a iloscaltana=iloscaltana+1
set /a exp=exp+50
goto front





:debet
cls
echo Unfortunately, you have indebted your city to the amount of %kasa%! Interest will increase
echo You have to go to work!
pause>nul
goto praca2

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
set /p wybieram:={1,2,3,4,5,6,7}:
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



:praca
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
echo 7. Back
set /p wybieram:={1,2,3,4,5,6,7}:
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



:hack
cls
echo Choose how much you want to hack.
echo.
echo 1. 5000  %waluta% 	Time 60h
echo 2. 10000 %waluta% 	Time 120h
echo 3. 15000 %waluta% 	Time 180h
echo 4. 20000 %waluta% 	Time 240h

set /p wybieram:={1;2;3;4}:
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
echo Welcome in Supercity studio!
pause
echo Don't think we'll give you 2000  %waluta% for nothing!
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
set /p odpowiedz:={1;2;3;4}:
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
set /p odpowiedz:={1;2;3;4}:
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
set /p odpowiedz:={1;2;3;4}:
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
set /p odpowiedz:={1;2;3;4}:
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
set /p odpowiedz:={1;2;3;4;5}:
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
set /p wybieram:={1;2}:  
if %wybieram:%==1 goto lotto
if %wybieram:%==2 goto front
if not %wybieram:%==1 goto front
if not %wybieram:%==2 goto front





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
set /p wybieram:={1;2}:  
if %wybieram:%==1 goto lotto
if %wybieram:%==2 goto front
if not %wybieram:%==1 goto front
if not %wybieram:%==2 goto front






















