:: Supercity © 2023 by Code613 is licensed under CC BY-NC-ND 4.0 
@echo off 
title SuperCity 5.0
color 0A

::Loading screen
:loadscreen
cls
echo SuperCity Version: 5.0
echo Update: Pricing Update
ping localhost -n 1 >nul
cls
echo Loading Game.
echo [#                   ]
ping localhost -n 1 >nul
cls
echo Loading Game..
echo [##                  ]
ping localhost -n 1 >nul
set "folder=Save"
if exist "%folder%" (
    echo Folder "%folder%" istnieje.
) else (
    echo Tworzenie folderu "%folder%"...
    mkdir "%folder%"
)
cd "%folder%"
cls
echo Loading Game...
echo [###                 ]
ping localhost -n 1 >nul
cls
echo Loading Game.
echo [####                ]
ping localhost -n 1 >nul
cls
echo Loading Game..
echo [#####               ]
ping localhost -n 1 >nul
cls
echo Loading Game...
echo [########            ]
ping localhost -n 1 >nul
if exist config.cfg goto cfgload
if not exist config.cfg goto cfgcreate
:lac
cls
echo Loading Game.
echo [#########           ]
ping localhost -n 1 >nul
cls
echo Loading Game..
echo [###########         ]
ping localhost -n 1 >nul
cls
echo Loading Game...
echo [############        ]
ping localhost -n 1 >nul
cls
echo Loading Game.
echo [#############       ]
ping localhost -n 1 >nul
cls
echo Loading Game..
echo [##############      ]
ping localhost -n 1 >nul
cls
echo Loading Game...
echo [###############     ]
ping localhost -n 1 >nul
cls
echo Loading Game.
echo [##################  ]
ping localhost -n 1 >nul
cls
echo Loading Game..
echo [################### ]
ping localhost -n 2 >nul
cls
echo Game Loaded!
ping localhost -n 1 >nul
cls
goto 0

:cfgcreate
set fo=1
set clr=0A
set lo=%date%
(
echo %fo%
echo %clr%
echo %lo%
)>config.cfg
goto lac

:cfgload
(
set /p fo=
set /p clr=
set /p lo=
)<config.cfg
color %clr%
set lotemp=%date%
set fo=0
(
echo %fo%
echo %clr%
echo %lotemp%
)>config.cfg
goto lac

:0
cls
if exist save5.dlb goto start
if not exist save5.dlb goto start0

::First EasterEgg
:eggo1
cls
if %eefhh%==1 goto eefound
set /a ees=ees+1
set eefhh=1
echo EasterEgg Found!
echo Heehee
echo.
pause
goto start

::2nd EasterEggs
:ihatemondays
cls
if %eefihm%==1 goto eefound
set /a ees=ees+1
set eefihm=1
echo EasterEgg Found!
echo.
echo Hi, so... this is an EasterEgg.
echo.
echo I hate Mondays, you know?
echo But you know what I hate more? Fake PNGs -_-
echo Like.. Dude, I fount an Image that I need
echo but, NOPE! Its a fake PNG.
echo.
echo Anyways, hope you're enjoying our game!
echo.
echo Click any key to go back to menu...
pause >nul
goto front

::3rd EasterEgg
:eggo3
cls
if %eefbs%==1 goto eefound
set /a ees=ees+1
set eefbs=1
echo EastrEgg Found!
color 1F
pause >nul
goto front

::Never Gonna Give You Up
:eggo5
cls
if %eefn%==1 goto eefound
set /a ees=ees+1
set eefn=1
start www.youtube.com/watch?v=dQw4w9WgXcQ
echo EasterEgg Found! But...
echo Hehehe...
pause >nul
goto front

::EasterEgg already found
:eefound
cls
set eesleft=0
set /a eesleft=5-ees
if %eesleft%==0 set eesleft=None
if %eesleft%==5 set eesleft=All
if %eesleft%==5 set eesallfound=1
echo You already found this easter egg
echo.
echo EasterEggs Left: %eesleft%
pause >nul
goto front

::Activates when you type "Poland" in country select
:voivodeship
cls
if %eeftp%==1 goto eefound
echo In which voivodeship will your city be located?
set /p "wojewodztwo=>> "
cls
set waluta0=Pln
set waluta=Pln
cls
echo Here you have: 1000 %waluta%, go and build your first building.
echo.
pause
set /a ees=ees+1
set eeftp=1
goto front

::SaveFile - GameContinue
:start
cls
echo.
echo ############==+++==############
echo #==# Welcome In SuperCity! #==#
echo ############==+++==############
echo #             5.0             #
echo ###############################
echo # 1. Continue Playing         #
echo # 2. How to Play              #
echo # 3. Game Info                #
echo # 4. Update Info              #
echo # 5. Reset Game               #
echo # 6. Change Text Color        #
echo # 7. Quit Game                #
echo ###############################
set /p "cho=Option: "
if %cho%==1 goto load
if %cho%==2 goto instrukcja
if %cho%==3 goto info
if %cho%==4 goto updinfo
if %cho%==5 goto reset
if %cho%==6 goto changecolor
if %cho%==7 goto exit
if %cho%==Heehee goto eggo1
if not %cho%==1 goto start
if not %cho%==2 goto start
if not %cho%==3 goto start
if not %cho%==4 goto start
if not %cho%==5 goto start
if not %cho%==6 goto start
if not %cho%==7 goto start
if not %cho%==Heehee goto start

::NoSaveFile - GameStart
:start0
cls
echo.
echo ############==+++==############
echo #==# Welcome In SuperCity! #==#
echo ############==+++==############
echo #             5.0             #
echo ###############################
echo # 1. New Game                 #
echo # 2. How to Play              #
echo # 3. Game Info                #
echo # 4. Update Info              #
echo # 5. Change Text Color        #
echo # 6. Quit Game                #
echo ###############################
set /p "cho=Option: "
if %cho%==1 goto gra
if %cho%==2 goto instrukcja
if %cho%==3 goto info
if %cho%==4 goto updinfo
if %cho%==5 goto changecolor
if %cho%==6 goto exit
if not %cho%==1 goto start0
if not %cho%==2 goto start0
if not %cho%==3 goto start0
if not %cho%==4 goto start0
if not %cho%==5 goto start0
if not %cho%==6 goto start0

::Change Color of Text
:changecolor
cls
echo Change Text Color
echo.
echo A - Green
echo B - Light Aqua
echo C - Red
echo D - Light Purple
echo E - Yellow
echo F - Bright White
echo.
set /p kolor=Option: 
if %kolor%==a goto changecolore2
if %kolor%==b goto changecolore2
if %kolor%==c goto changecolore2
if %kolor%==d goto changecolore2
if %kolor%==e goto changecolore2
if %kolor%==f goto changecolore2
if %kolor%==A goto changecolore2
if %kolor%==B goto changecolore2
if %kolor%==C goto changecolore2
if %kolor%==D goto changecolore2
if %kolor%==E goto changecolore2
if %kolor%==F goto changecolore2
if not %kolor%==a goto changecolor
if not %kolor%==b goto changecolor
if not %kolor%==c goto changecolor
if not %kolor%==d goto changecolor
if not %kolor%==e goto changecolor
if not %kolor%==f goto changecolor
if not %kolor%==A goto changecolor
if not %kolor%==B goto changecolor
if not %kolor%==C goto changecolor
if not %kolor%==D goto changecolor
if not %kolor%==E goto changecolor
if not %kolor%==F goto changecolor
:changecolore2
color 0%kolor%
if exist config.cfg goto cfgsave
if not exist config.cfg goto cfgcreate2
:cfgsave
set clr=%kolor%
(
echo %fo%
echo 0%clr%
echo %lotemp%
)>config.cfg
goto changecolorexit

:cfgcreate2
set fo=0
set lo=%date%
(
echo %fo%
echo %kolor%
echo %lo%
)>config.cfg
goto changecolorexit

:changecolorexit
cls
goto 0

::game reset
:reset
del save5.dlb
cls
goto start0

::game load
:load
(
set /p exp=
set /p kasa=
set /p mieszkancy=
set /p nasycenieM=
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
set /p kraj=
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
set /p bonused=
set /p ees=
set /p eefhh=
set /p eefbs=
set /p eeftp=
set /p eefihm=
set /p eefn=
set /p eesallfound=
set /p deadcity=
set /p killedcity=
set /p cenadom=
set /p cenawiezowiec=
set /p cenaapartament=
set /p cenaaltana=
set /p bonuswork=
)<save5.dlb

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
echo We couldn't find 'save5.dlb'
echo If you're playing 1st time, don't worry
echo just press any key to go to
echo the No-Save-File-Menu
echo.
echo.
echo Please Restart the Game or Start a New Game
echo. 
echo Press any key to Start a New Game
pause >nul
cls
goto start0

::save test2
:savetest
if exist save5.dlb goto delsave
if not exist save5.dlb goto save

::save1
:save
(
echo %exp%
echo %kasa%
echo %mieszkancy%
echo %nasyceniem%
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
echo %kraj%
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
echo %bonused%
echo %ees%
echo %eefhh%
echo %eefbs%
echo %eeftp%
echo %eefihm%
echo %eefn%
echo %eesallfound%
echo %deadcity%
echo %killedcity%
echo %cenadom%
echo %cenawiezowiec%
echo %cenaapartament%
echo %cenaaltana%
echo %bonuswork%
)>save5.dlb
goto save5

::exit save
:exitsave
(
echo %exp%
echo %kasa%
echo %mieszkancy%
echo %nasyceniem%
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
echo %kraj%
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
echo %bonused%
echo %ees%
echo %eefhh%
echo %eefbs%
echo %eeftp%
echo %eefihm%
echo %eefn%
echo %eesallfound%
echo %deadcity%
echo %killedcity%
echo %cenadom%
echo %cenawiezowiec%
echo %cenaapartament%
echo %cenaaltana%
echo %bonuswork%
)>save5.dlb
goto exit
:exit
exit

::auto save
:front
(
echo %exp%
echo %kasa%
echo %mieszkancy%
echo %nasyceniem%
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
echo %kraj%
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
echo %bonused%
echo %ees%
echo %eefhh%
echo %eefbs%
echo %eeftp%
echo %eefihm%
echo %eefn%
echo %eesallfound%
echo %deadcity%
echo %killedcity%
echo %cenadom%
echo %cenawiezowiec%
echo %cenaapartament%
echo %cenaaltana%
echo %bonuswork%
)>save5.dlb
goto gra0

::remove save
:delsave
del save5.dlb
goto save

::save5
:save5
cls
echo Game Saved!
echo 1. Continue Playing
echo 2. Exit
set /p "exit=Option: "
if %exit%==1 goto front
goto exitsave





::game info
:info
cls
echo Idea From:
echo DaVinci (Polish Youtuber)
echo.
echo Game Creators:
echo - Code613
echo - EMOJI TV YT (Polish Streamer)
echo.
echo.
echo Game Version - 5.0
echo Update: Prices Update
echo.
echo Game Official Codeing Lang. - Batch
pause >nul
cls 
goto 0

::game's update info
:updinfo
cls
echo Game Version - 5.0
echo Update: Prices Update
echo.
echo What's New?
echo -New pricing system.
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
echo Select/Ok - Enter - use when you see text "Option: ".
echo Skipping - Just Press Any Key when after dislaying
echo the text you don't or do see "Press any key to continue".
pause >nul
cls
goto 0





::Gameplay Loading
:gra
set kasa=1000
set mieszkancy=0
set nasyceniem=100
set cenadom=200
set cenawiezowiec=800
set cenaapartament=350
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
set Skyscraper1000ach=0
set Bowers1000ach=0
set Apartments1000ach=0
set Fairs1000ach=0
set bonused=0
set ees=0
set eefhh=0
set eefbs=0
set eeftp=0
set eefihm=0
set eefn=0
set eesallfound=0
set deadcity=0
set killedcity=0
set bonuswork=0
cls
echo What is your name?:
set /p "imie=>> "
cls
echo What is your surname?:
set /p "nazwisko=>> "
cls
echo Welcome %imie% %nazwisko% ! Now you're the new mayor of your city!
echo.
pause >nul
echo How will your city be called?
set /p "miasto=>> "
cls
echo In what country will your city be located?
set/p "kraj=>> "
if %kraj%==Polska goto voivodeship
if %kraj%==Poland goto voivodeship
if %kraj%==polska goto voivodeship
if %kraj%==poland goto voivodeship
if not %kraj%==Polska goto novoivodeship
if not %kraj%==Poland goto novoivodeship
if not %kraj%==polska goto novoivodeship
if not %kraj%==poland goto novoivodeship

::Activates when you don't type "Poland" in country select
:novoivodeship
set wojewodztwo=None
cls
echo What will your currency be called. Enter its name, not symbol.
set /p "waluta0=>> "
set waluta=%waluta0%s
cls
echo Here you have: 1000 %waluta%, go and build your first building.
echo.
pause
goto front






::Gameplay Itself/City Menu
:gra0
if /i %kasa% LEQ 0 goto debet

if /i %mieszkancy% GEQ 1000 if /i %mieszkancy% LEQ 1200 if /i %nagrody% LSS 1 goto winner

if /i %mieszkancy% GEQ 10000 if /i %mieszkancy% LEQ 10200 if /i %nagrody% LSS 2 goto winner2

if /i %mieszkancy% GEQ 100000 if /i %mieszkancy% LEQ 100200 if /i %nagrody% LSS 3 goto winner3

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
if %killedcity%==1 goto kcachievement
if %deadcity%==1 goto deadhunger

if %nasyceniem%==50 goto halfhunger
if %nasyceniem%==10 goto hunger
if %nasyceniem% LEQ 0 goto deadhunger

goto mainmenu

:mainmenu
set "cho=text"
set /a random_number=%random% %% 500 + 1
if %random_number%==1 goto disaster1
if %random_number%==2 goto disaster2
if %random_number%==3 goto disaster3
if %random_number%==4 goto disaster4
if %random_number%==5 goto disaster5
set /a nasyceniem=nasyceniem-5
cls
echo ########################################
echo              # City  Menu #           
echo Money: %kasa% %waluta0%        Residents: %mieszkancy%
echo ########################################
echo #============#  Buildings  #===========#
echo # 1. Buy A House (Cost: %cenadom% %waluta%)
echo # 2. Buy A Apartament (Cost: %cenaapartament% %waluta%)
echo # 3. Buy A Bower (Cost: %cenaaltana% %waluta%)
echo # 4. Buy An Skyscraper (Cost: %cenawiezowiec% %waluta%)
echo ########################################
echo              # Mayor Menu #             
echo ########################################
echo #===========#  Activities  #===========#
echo # 5. Go to Work                        #
echo # 6. Play Lotto                        #
echo # 7. Go to Fair                        #
echo #==============#  Stats  #=============#
echo # 8. Player Stats                      #
echo # 9. City Stats                        #
echo # 10. Achievements                     #
echo #==============#  Food  #==============#
echo # 11. Buy Food                         #
if %deadcity%==1 echo # CDB. Hire Cleaning Service            #
echo ########################################
echo               # Settings #              
echo ########################################
echo # 12. Save Game                        #
echo # 13. Change Text Color                #
echo ########################################

set /p "cho=Option: "
if %cho%==1 goto checkdom
if %cho%==4 goto checkwiezowiec
if %cho%==3 goto checkaltana
if %cho%==2 goto checkapartament
if %cho%==5 goto praca
if %cho%==6 goto lotto
if %cho%==7 goto Jarmark
if %cho%==11 goto buyfood
if %deadcity%==1 if %cho%==CDB goto hirecs
if %deadcity%==1 if %cho%==Cdb goto hirecs
if %deadcity%==1 if %cho%==cdb goto hirecs
if %cho%==10 goto achievements0
if %cho%==12 goto save
if %cho%==13 goto changecolor2
if %cho%==8 goto pstats
if %cho%==9 goto cstats

if %cho%==Bonus4City goto bonus
if %cho%==Work goto ihatemondays

if not %cho%==1 goto invoption_mainmenu
if not %cho%==2 goto invoption_mainmenu
if not %cho%==3 goto invoption_mainmenu
if not %cho%==4 goto invoption_mainmenu
if not %cho%==5 goto invoption_mainmenu
if not %cho%==6 goto invoption_mainmenu
if not %cho%==7 goto invoption_mainmenu
if not %cho%==8 goto invoption_mainmenu
if not %deadcity%==1 if not %cho%==CDB goto invoption_mainmenu
if not %deadcity%==1 if not %cho%==Cdb goto invoption_mainmenu
if not %deadcity%==1 if not %cho%==cdb goto invoption_mainmenu
if not %cho%==9 goto invoption_mainmenu
if not %cho%==10 goto invoption_mainmenu
if not %cho%==11 goto invoption_mainmenu
if not %cho%==12 goto invoption_mainmenu
if not %cho%==13 goto invoption_mainmenu

if not %cho%==Bonus4City goto front
if not %cho%==Work goto ihatemondays


:disaster1
for /L %%x in (1,1,10000) do (
    set x=%%x
)
cls
echo.
echo A cyclone has passed through your city. You lost %x% of your money.
set /a kasa=kasa-x
pause
goto mainmenu

:disaster2
for /L %%x in (1,1,10000) do (
    set x=%%x
)
cls
echo.
echo There was a flood in your city. You lost %x% of your money.
set /a kasa=kasa-x
pause
goto mainmenu

:disaster3
for /L %%x in (1,1,10000) do (
    set x=%%x
)
cls
echo.
echo There was an earthquake in your city. You lost %x% of your money.
set /a kasa=kasa-x
pause
goto mainmenu

:disaste4
for /L %%x in (1,1,10000) do (
    set x=%%x
)
cls
echo.
echo There was a volcanic eruption in your city. You lost %x% of your money.
set /a kasa=kasa-x
pause
goto mainmenu

:disaster5
for /L %%x in (1,1,10000) do (
    set x=%%x
)
cls
echo.
echo A meteorite hit your city. You lost %x% of your money.
set /a kasa=kasa-x
pause
goto mainmenu


:invoption_mainmenu
echo.
echo.
echo Invalid Option, Please Try Again.
timeout 2 >nul
goto front





:halfhunger
cls
echo Hey! Be careful!
echo Saturation of People Living in Your City is at:
echo %nasyceniem%%
timeout 4 >nul
goto mainmenu

:hunger
cls
echo Hey! Be careful!
echo Saturation of People Living in Your City is at:
echo %nasyceniem%%
echo You have to buy them food! NOW!
timeout 4 >nul
goto mainmenu

:deadhunger
cls
set deadcity=1
set mieszkancy=0
set killedcity=1
echo Your city is dead
echo Hire Cleaning Service to Get Rid of the Dead Bodies
timeout 3 >nul
goto hirecs

:hirecs
cls
echo Do you want to hire Cleaning Service? [Y/N]
echo (Cost: 500 %waluta%)
echo.
set /p "cho=Option: "
if %cho%==Y goto hirecs_yes
if %cho%==N goto hirecs_no
if %cho%==y goto hirecs_yes
if %cho%==n goto hirecs_no

:hirecs_no
cls
echo Why tho??
timeout 3 >nul
goto mainmenu

:hirecs_yes
cls
set kasa=kasa-500
set deadcity=0
set nasyceniem=100
echo The City has been Cleaned!
timeout 3 >nul
goto front

:buyfood
cls
echo How much food do you want to buy?
echo.
echo 1. 50,000 KG (Cost: 500 %waluta%)
echo [+5 City Saturation]
echo 2. 100,000 KG (Cost: 1000 %waluta%)
echo [+10 City Saturation]
echo 3. 500,000 KG (Cost: 5000 %waluta%)
echo [+50 City Saturation]
echo.
echo [ Q ] Go Back
echo.
set /p "cho=Option: "
if %cho%==1 set /a kasa=kasa-500 && set /a nasyceniem=nasyceniem+5 && cls && echo You have purchased 50,000 kg of food. && timeout 3 >nul && goto mainmenu
if %cho%==2 set /a kasa=kasa-1000 && set /a nasyceniem=nasyceniem+10 && cls && echo You have purchased 100,000 kg of food. && timeout 3 >nul && goto mainmenu
if %cho%==3 set /a kasa=kasa-5000 && set /a nasyceniem=nasyceniem+50 && cls && echo You have purchased 500,000 kg of food. && timeout 3 >nul && goto mainmenu
if not %cho%==1 echo. && echo. && echo Invalid Option && timeout 2 >nul && goto buyfood
if not %cho%==2 echo. && echo. && echo Invalid Option && timeout 2 >nul && goto buyfood
if not %cho%==3 echo. && echo. && echo Invalid Option && timeout 2 >nul && goto buyfood
if %cho%==Q goto front
if %cho%==q goto front
if not %cho%==Q echo. && echo. && echo Invalid Option && timeout 2 >nul && goto buyfood
if not %cho%==q echo. && echo. && echo Invalid Option && timeout 2 >nul && goto buyfood






::Player Statistics
:pstats
cls
echo ########################################
echo #             Player Stats             #
echo ########################################
echo # Experience points: %exp%
echo # Money: %kasa% %waluta%
echo # Awards: %nagrody%/3
echo # EasterEggs Found: %ees%/5
echo ########################################
pause >nul
goto front

::City Statistics
:cstats
cls
echo ########################################
echo #              City Stats              #
echo ########################################
echo # Money: %kasa% %waluta%
echo # Money Name: %waluta0%
echo ########################################
echo # Residents: %mieszkancy%
echo # Houses: %iloscdom%
echo # Skyscrapers: %iloscwiezowiec%
echo # Apartments: %iloscapartament%
echo # Bowers: %iloscaltana%
echo # Fairs: %iloscjarmark%
echo #
echo # Cityzens Saturation: %nasyceniem%/100+
echo ########################################
echo #             Localization             #
echo ########################################
echo # 
echo # Country: %kraj%
echo # Voivodeship: %wojewodztwo%
echo # City Name: %miasto%
echo ########################################
pause >nul
goto front



::Change Color of Text2
:changecolor2
cls
echo Change Text Color
echo Please use capital letters.
echo.
echo A - Green (Default)
echo B - Light Aqua
echo C - Red
echo D - Light Purple
echo E - Yellow
echo F - Bright White
echo.
echo ext - Go Back to Menu
echo.
set /p kolor=Option: 
if %kolor%==ext goto front
if %kolor%==bluescreen goto eggo3
if %kolor%==BlueScreen goto eggo3
if %kolor%==BLUESCREEN goto eggo3
if %kolor%==a goto changecolor2e2
if %kolor%==b goto changecolor2e2
if %kolor%==c goto changecolor2e2
if %kolor%==d goto changecolor2e2
if %kolor%==e goto changecolor2e2
if %kolor%==f goto changecolor2e2
if %kolor%==A goto changecolor2e2
if %kolor%==B goto changecolor2e2
if %kolor%==C goto changecolor2e2
if %kolor%==D goto changecolor2e2
if %kolor%==E goto changecolor2e2
if %kolor%==F goto changecolor2e2
goto front
:changecolor2e2
set clr=%kolor%
color 0%kolor%
if exist config.cfg goto cfgsave2
if not exist config.cfg goto cfgcreate3
:cfgsave2
(
echo %fo%
echo 0%clr%
echo %lotemp%
)>config.cfg
goto changecolor22exit

:cfgcreate3
set fo=0
set clr=0A
set lo=%date%
(
echo %fo%
echo 0%clr%
echo %lotemp%
)>config.cfg
goto changecolor22exit

:changecolor22exit
cls
goto front



::achievements
:achievements0
cls
echo [Achievements]
echo.
echo.
if /i %iloscdom% GEQ 100 echo [6] 100 Houses achievement - Unlocked
if /i not %iloscdom% GEQ 100 echo [6] 100 Houses achievement - Locked
echo achievement Description: Buy 100 Houses
echo.
if /i %iloscwiezowiec% GEQ 100 echo [2] 100 Skyscrapers achievement - Unlocked
if /i not %iloscwiezowiec% GEQ 100 echo [2] 100 Skyscrapers achievement - Locked
echo achievement Description: Buy 100 Skyscrapers
echo.
if /i %iloscaltana% GEQ 100 echo [3] 100 Bowers achievement - Unlocked
if /i not %iloscaltana% GEQ 100 echo [3] 100 Bowers achievement - Locked
echo achievement Description: Buy 100 Bowers
echo.
if /i %iloscapartament% GEQ 100 echo [4] 100 Apartaments achievement - Unlocked
if /i not %iloscapartament% GEQ 100 echo [4] 100 Apartaments achievement - Locked
echo achievement Description: Buy 100 Apartaments
echo.
if /i %iloscjarmark% GEQ 100 echo [5] 100 Fairs achievement - Unlocked
if /i not %iloscjarmark% GEQ 100 echo [5] 100 Fairs achievement - Locked
echo achievement Description: Buy 100 Fairs
echo.
if /i %iloscdom% GEQ 1000 echo [6] 1000 Houses achievement - Unlocked
if /i not %iloscdom% GEQ 1000 echo [6] 1000 Houses achievement - Locked
echo achievement Description: Buy 1000 Houses
echo.
if /i %iloscwiezowiec% GEQ 1000 echo [7] 1000 Skyscrapers achievement - Unlocked
if /i not %iloscwiezowiec% GEQ 1000 echo [7] 1000 Skyscrapers achievement - Locked
echo achievement Description: Buy 1000 Skyscrapers
echo.
if /i %iloscaltana% GEQ 1000 echo [8] 1000 Bowers achievement - Unlocked
if /i not %iloscaltana% GEQ 1000 echo [8] 1000 Bowers achievement - Locked
echo achievement Description: Buy 1000 Bowers
echo.
if /i %iloscapartament% GEQ 1000 echo [9] 1000 Apartaments achievement - Unlocked
if /i not %iloscapartament% GEQ 1000 echo [9] 1000 Apartaments achievement - Locked
echo achievement Description: Buy 1000 Apartaments
echo.
if /i %iloscjarmark% GEQ 1000 echo [10] 1000 Fairs achievement - Unlocked
if /i not %iloscjarmark% GEQ 1000 echo [10] 1000 Fairs achievement - Locked
echo achievement Description: Buy 1000 Fairs
echo.
if /i %killedcity% GEQ 1 echo [11] Abandoned City - Unlocked
if /i not %killedcity% GEQ 1 echo [11] Empty Your City - Locked
echo achievement Description: Kill Your City by Leaveing Them Without Food
echo.
if /i %exp% GEQ 100000 echo [12] XP God - Unlocked
if /i not %exp% GEQ 100000 echo [12] XP God - Locked
echo achievement Description: Gain 100k XP
if /i %exp% GEQ 100000 echo.
if /i not %exp% GEQ 100000 echo Your current xp: %exp%/100k
pause >nul
goto front

:xpgod
cls
echo.
echo New achievement Unlocked (Abandoned City)
echo +1000 %waluta%
echo +100 Cityzens
echo.
echo You Killed Everyone, Congrats lol
echo.
pause
cls 
set /a mieszkancy=mieszkancy+100
set Skyscraper100ach=1
set /a kasa=kasa+1000
cls 
goto front


::You Killed Everyone, Congrats lol
:kcachievement
cls
echo.
echo New achievement Unlocked (Abandoned City)
echo +1000 Exp
echo +100 Cityzens
echo.
echo You Killed Everyone, Congrats lol
echo.
pause
cls 
set /a mieszkancy=mieszkancy+100
set Skyscraper100ach=1
set /a exp=exp+1000
set /a killedcity=killedcity+1
cls 
goto front



::Skyscraper achievement2
:Skyscraper100ach
cls
echo.
echo New achievement Unlocked (100 Skyscraper)
echo +1000 Exp
echo +1000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+1000
set Skyscraper100ach=1
set /a exp=exp+1000
set /a iloscwiezowiec=iloscwiezowiec+1
cls 
goto front



::houses achievement2
:house100ach
cls
echo.
echo New achievement Unlocked (100 houses)
echo +1000 Exp
echo +1000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+1000
set house100ach=1 
set /a exp=exp+1000
set /a iloscdom=iloscdom+1
cls 
goto front



::Bowers achievement2
:Bowers100ach
cls
echo.
echo New achievement Unlocked (100 Bowers)
echo +1000 Exp
echo +1000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+1000
set Bowers100ach=1
set /a exp=exp+1000
set /a iloscaltana=iloscaltana+1
cls 
goto front



::Apartaments achievement2
:Apartments100ach
cls
echo.
echo New achievement Unlocked (100 Apartaments)
echo +1000 Exp
echo +1000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+1000
set Apartments100ach=1
set /a exp=exp+1000
set /a iloscapartament=iloscapartament+1
cls 
goto front



::Fairs achievement2
:Fairs100ach
cls
echo.
echo New achievement Unlocked (100 Fairs)
echo +1000 Exp
echo +1000 %waluta%
echo.
pause
cls 
set /a kasa=kasa+1000
set Fairs100ach=1
set /a exp=exp+1000
set /a iloscjarmark=iloscjarmark+1
cls 
goto front



::Skyscraper achievement
:Skyscraper1000ach
cls
echo.
echo New achievement Unlocked (1000 Skyscraper)
echo +1500 Exp
echo +1500 %waluta%
echo.
pause
cls 
set /a kasa=kasa+1500
set Skyscraper1000ach=1
set /a exp=exp+1500
set /a iloscwiezowiec=iloscwiezowiec+1
cls 
goto front



::houses achievement
:house1000ach
cls
echo.
echo New achievement Unlocked (1000 houses)
echo +1500 Exp
echo +1500 %waluta%
echo.
pause
cls 
set /a kasa=kasa+1500
set house1000ach=1 
set /a exp=exp+1500
set /a iloscdom=iloscdom+1
cls 
goto front



::Bowers achievement
:Bowers1000ach
cls
echo.
echo New achievement Unlocked (1000 Bowers)
echo +1500 Exp
echo +1500 %waluta%
echo.
pause
cls 
set /a kasa=kasa+1500
set Bowers1000ach=1
set /a exp=exp+1500
set /a iloscaltana=iloscaltana+1
cls 
goto front



::Apartaments achievement
:Apartments1000ach
cls
echo.
echo New achievement Unlocked (1000 Apartaments)
echo +1500 Exp
echo +1500 %waluta%
echo.
pause
cls 
set /a kasa=kasa+1500
set Apartments1000ach=1
set /a exp=exp+1500
set /a iloscapartament=iloscapartament+1
cls 
goto front



::Fairs achievement
:Fairs1000ach
cls
echo.
echo New achievement Unlocked (1000 Fairs)
echo +1500 Exp
echo +1500 %waluta%
echo.
pause
cls 
set /a kasa=kasa+1500
set Fairs1000ach=1
set /a exp=exp+1500
set /a iloscjarmark=iloscjarmark+1
cls 
goto front



::fair
:Jarmark 
cls
echo The fair will bring profit in 24 hours.
echo Progress: [                        ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [#                       ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [##                      ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [###                     ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [####                    ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [#####                   ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [######                  ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [#######                 ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [########                ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [#########               ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [##########              ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [###########             ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [############            ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [#############           ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [##############           ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [###############          ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [################         ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [#################        ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [##################       ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [###################      ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [####################     ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [#####################   ]
ping localhost-n 1 >nul
cls
echo The fair will bring profit in 24 hours.
echo Progress: [######################  ]
ping localhost-n 1 >nul
goto jarmarkdone



:jarmarkdone
cls
echo The fair will bring profit in 24 hours.
echo Progress: Done!
ping localhost-n 1 >nul
set /a bonuswork=bonuswork+1
cls
set randomfaircash=%random:~0,5%
echo You have earned %randomfaircash% %waluta%. at the Fair.
echo +200 exp 
set /a kasa=kasa+%randomfaircash%
set /a exp=exp+200
ping localhost -n 1 >nul
set randomfaircash=0
pause >nul
goto front 



::bonus
:bonus 
if %bonused%==1 goto bonhasexp
set /a kasa=kasa+1500000
set /a mieszkancy=mieszkancy+50000
set /a iloscaltana=iloscaltana+10000
set /a iloscapartament= iloscapartament+10000
set /a iloscdom=iloscdom+10000
set /a iloscjarmark=iloscjarmark+10000
set /a iloscwiezowiec=iloscwiezowiec+10000
set /a exp=exp+1500000
set bonused=1
goto front 

:bonhasexp
cls
echo Bonus Code Has Expired or Was Already Used!
ping localhost -n 3 >nul
goto front


::buy house
:checkdom
set /a kasa=kasa-cenadom
set /a mieszkancy=mieszkancy+md
set /a iloscdom=iloscdom+1
set /a exp=exp+50
set /a cenadom=cenadom+4
set /a bonuswork=bonuswork+1
goto front


::buy apartament
:checkapartament
set /a kasa=kasa-cenaapartament
set /a mieszkancy=mieszkancy+map
set /a iloscapartament=iloscapartament+1
set /a exp=exp+50
set /a cenaapartament=cenaapartament+8
set /a bonuswork=bonuswork+1
goto front


::buy Skyscraper
:checkwiezowiec
set /a kasa=kasa-cenawiezowiec
set /a mieszkancy=mieszkancy+mw
set /a iloscwiezowiec=iloscwiezowiec+1
set /a exp=exp+50
set /a cenawiezowiec=cenawiezowiec+20
set /a bonuswork=bonuswork+10
goto front


::buy altana
:checkaltana
set /a kasa=kasa-cenaaltana
set /a mieszkancy=mieszkancy+ma
set /a iloscaltana=iloscaltana+1
set /a exp=exp+50
set /a cenaaltana=cenaaltana+2
goto front

::debet
:debet
cls
echo Unfortunately, you have indebted your city to the amount of %kasa%! Interest will decrease.
echo You have to go to work!
pause >nul
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
echo 4. Hacker (500-2000 %waluta%)
echo 5. a clothing store (500 %waluta%)
echo 6. Photographer (500 %waluta%)
echo.
set /p "cho=Option: "
if %cho%==1 goto fabryka
if %cho%==2 goto mcdonald
if %cho%==3 goto inf
if %cho%==4 goto hack
if %cho%==5 goto ubrania
if %cho%==6 goto Foto
if not %cho%==1 goto praca
if not %cho%==2 goto praca
if not %cho%==3 goto praca
if not %cho%==4 goto praca
if not %cho%==5 goto praca
if not %cho%==6 goto praca
goto praca2

::work
:praca
cls
echo.
echo.									
echo As who do you want to work?
echo 1. Factory Worker (1500+ %waluta%)
echo 2. McDonald's Worker (500+ %waluta%)
echo 3. Computer Specialist (2000+ %waluta%)
echo 4. Hacker (500-2000+ %waluta%)
echo 5. Clotheing Shop  Worker (500+ %waluta%)
echo 6. Photographer (500+ %waluta%)
echo.
echo 7. Back
set /p "cho=Option: "
if %cho%==1 goto fabryka
if %cho%==2 goto mcdonald
if %cho%==3 goto inf
if %cho%==4 goto hack
if %cho%==5 goto ubrania
if %cho%==6 goto Foto
if %cho%==7 goto front
if not %cho%==1 goto praca
if not %cho%==2 goto praca
if not %cho%==3 goto praca
if not %cho%==4 goto praca
if not %cho%==5 goto praca
if not %cho%==6 goto praca
if not %cho%==7 goto praca
goto praca

::photograph
:foto
cls
echo Hello, I see you need quick cash?
pause >nul
echo You just need to be a good worker, 
echo You will get 500+ %waluta%. Press enter.
pause >nul
cls
echo Wait 5 hours.
echo Progress: [####    ]
ping localhost-n 1 >nul
echo Wait 4 hours..
echo Progress: [#####   ]
ping localhost-n 1 >nul
echo Wait 3 hours...
echo Progress: [######  ]
ping localhost-n 1 >nul
echo Wait 2 hours.
echo Progress: [####### ]
ping localhost-n 1 >nul
echo Wait 1 hour..
echo Progress: [########]
ping localhost-n 1 >nul
cls
echo You've finished your work. You have earned 500 %waluta%.
echo +100 exp
pause>nul
set /a kasa=kasa+500+bonuswork
set /a exp=exp+100
goto front


::clothes
:ubrania 
cls
echo Hello, I see you need quick cash?
pause>nul
echo You just need to be a good worker, 
echo You will get 500+ %waluta%. Press enter.
pause>nul
cls
echo Wait 8 hours.
echo Progress: [#       ]
ping localhost-n 1 >nul
echo Wait 7 hours..
echo Progress: [##      ]
ping localhost-n 1 >nul
echo Wait 6 hours...
echo Progress: [###     ]
ping localhost-n 1 >nul
echo Wait 5 hours.
echo Progress: [####    ]
ping localhost-n 1 >nul
echo Wait 4 hours..
echo Progress: [#####   ]
ping localhost-n 1 >nul
echo Wait 3 hours...
echo Progress: [######  ]
ping localhost-n 1 >nul
echo Wait 2 hours.
echo Progress: [####### ]
ping localhost-n 1 >nul
echo Wait 1 hour..
echo Progress: [########]
ping localhost-n 1 >nul
echo You've finished your work. You have earned 500 %waluta%.
echo Progress: Done!
echo +100 exp
pause>nul
set /a kasa=kasa+500+bonuswork
set /a exp=exp+100
goto front


::hacking
:hack
cls
echo Choose how much you want to hack.
echo.
echo 1. 500+  %waluta% 	Time 60h
echo 2. 800+ %waluta% 	Time 120h
echo 3. 1600+ %waluta% 	Time 180h
echo 4. 2000+ %waluta% 	Time 240h
set /p "cho=Option: "
if %cho%==1 goto h1
if %cho%==2 goto h2
if %cho%==3 goto h3
if %cho%==4 goto h4
if not %cho%==1 goto praca
if not %cho%==2 goto praca
if not %cho%==3 goto praca
if not %cho%==4 goto praca

:h1
cls
echo Progress: [#   ]
ping localhost-n 15 >nul
cls
echo Progress: [##  ]
ping localhost-n 15 >nul
cls
echo Progress: [### ]
ping localhost-n 15 >nul
cls
echo Progress: [####]
ping localhost-n 15 >nul
cls
echo Hacking complete.
echo Progress: Done!
ping localhost-n 10 >nul
echo +100 exp
pause
set /a exp=exp+100
set /a kasa=kasa+500+bonuswork
cls
goto front

:h2
cls
echo Progress: [#   ]
ping localhost-n 15 >nul
cls
echo Progress: [##  ]
ping localhost-n 15 >nul
cls
echo Progress: [### ]
ping localhost-n 15 >nul
cls
echo Progress: [####]
ping localhost-n 15 >nul
cls
echo Hacking complete.
echo Progress: Done!
ping localhost-n 10 >nul
echo +200 exp
pause
set /a exp=exp+200
set /a kasa=kasa+800+bonuswork
cls
goto front

:h3
cls
echo Progress: [#   ]
ping localhost-n 15 >nul
cls
echo Progress: [##  ]
ping localhost-n 15 >nul
cls
echo Progress: [### ]
ping localhost-n 15 >nul
cls
echo Progress: [####]
ping localhost-n 15 >nul
cls
echo Hacking complete.
echo Progress: Done!
ping localhost-n 10 >nul
echo +100 exp
pause
set /a exp=exp+300
set /a kasa=kasa+1600+bonuswork
cls
goto front

:h4
cls
echo Progress: [#   ]
ping localhost-n 15 >nul
cls
echo Progress: [##  ]
ping localhost-n 15 >nul
cls
echo Progress: [### ]
ping localhost-n 15 >nul
cls
echo Progress: [####]
ping localhost-n 15 >nul
cls
echo Hacking complete.
echo Progress: Done!
ping localhost-n 10 >nul
echo +100 exp
pause
set /a exp=exp+400
set /a kasa=kasa+2000+bonuswork
cls
goto front


:inf
cls
echo Welcome in Supercity Studio!
pause
echo Don't think we'll give you 2000 %waluta% for nothing!
pause
echo You must answer 3 questions correctly to get 2000+ %waluta%.
pause
cls
goto p1

:p1
cls
echo 1. Who created microsoft?
echo.
echo 1. Jacob Klawiter
echo 2. Robert Lewandoski
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
echo 3. Scratch
echo 4. Java
set /p "odpowiedz:=Option: "
if %odpowiedz:%==2 goto p3
if NOT %odpowiedz:%==2 goto zle

:p3
cls
echo 3. What does the dir/s command in cmd do?
echo.
echo 1. Deletes files 
echo 2. Creates a new folder
echo 3. Display the names of system files
echo 4. Updates Apps
set /p "odpowiedz:=Option: "
if %odpowiedz:%==3 goto dobrze
if not %odpowiedz:%==3 goto zle
 
:zle
cls
echo Unfortunately you answer was wrong.
pause
goto front

:dobrze
cls
set /a kasa=kasa+2000+bonuswork
set /a tmp=2000+bonuswork
set /a exp=exp+100
echo You managed to answer all the questions!
pause>nul
echo Here's your salary of %tmp% %waluta%.
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
echo You must answer 3 questions correctly to get 1500+ %waluta%.
pause
cls
goto f1

:f1
cls
echo 1. What's the name of the actor who played Mike Wheeler on the TV series "Stranger Things"?
echo 1. Johnny Brawo
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
set /a kasa=kasa+wyplataf+bonuswork
set /a tmp=1500+bonuswork
echo You managed to answer all the questions!
pause>nul
echo Here's your salary of %tmp% %%waluta%.
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
echo You will get 500+ %waluta%. okay?
pause
cls
echo Wait 8 hours.
echo Progress: [#       ]
ping localhost-n 1 >nul
echo Wait 7 hours..
echo Progress: [##      ]
ping localhost-n 1 >nul
echo Wait 6 hours...
echo Progress: [###     ]
ping localhost-n 1 >nul
echo Wait 5 hours.
echo Progress: [####    ]
ping localhost-n 1 >nul
echo Wait 4 hours..
echo Progress: [#####   ]
ping localhost-n 1 >nul
echo Wait 3 hours...
echo Progress: [######  ]
ping localhost-n 1 >nul
echo Wait 2 hours.
echo Progress: [####### ]
ping localhost-n 1 >nul
echo Wait 1 hour..
echo Progress: [########]
ping localhost-n 1 >nul
set /a tmp=500+bonuswork
echo You've finished your work. You have earned %tmp% %waluta%.
echo Progress: Done!
echo +100 exp
pause>nul
set /a kasa=kasa+wyplatamc+bonuswork
set /a exp=exp+100
goto front

:winner
cls
echo Congrats! In your city lives over 1,000 people!
echo You get +2,500 XP and 1,000 %waluta%
pause>nul
set /a kasa=kasa+1000
set /a nagrody=nagrody+1 
set /a exp=exp+2500
cls
goto front




:winner2
cls
echo Congrats! In your city lives over 10,000 people!
echo You get +3,000 XP and 1,500 %waluta%
pause>nul
set /a kasa=kasa+1500
set /a nagrody=nagrody+1 
set /a exp=exp+3000
cls
goto front

:winner3
cls
echo Congrats! In your city lives over 100,000 people!
echo You get +4,000 XP and 2,500 %waluta%
pause>nul
set /a kasa=kasa+2,500
set /a nagrody=nagrody+1 
set /a exp=exp+4000
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
set /a losowa=%random:~1,2%
if %losowa%==00 goto lotto
echo The coupon costs 50 %waluta%. The amount has been debited from the account.
pause>nul
echo Current account balance: %kasa% %waluta%
pause
echo Guess the number from the range (01-99)!
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
set /p "cho=Option: "
if %cho%==1 goto lotto
if %cho%==2 goto front
if not %cho%==1 goto front
if not %cho%==2 goto front

::lotto lose
:loserlotto
cls
echo You lose!
echo +50 exp 
pause>nul
set /a exp=exp+50
cls
echo Do you want to play again?
echo 1. Yes
echo 2. No
set /p "cho=Option: "
if %cho%==1 goto lotto
if %cho%==2 goto front
if %cho%==never goto eggo5
if %cho%==Never goto eggo5
if %cho%==NEVER goto eggo5
if not %cho%==1 goto front
if not %cho%==2 goto font
if not %cho%==never goto eggo5
if not %cho%==Never goto eggo5
if not %cho%==NEVER goto eggo5
