#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
FileCreateDir, C:\Games\Files_for_AHK\
Ruk_Sost = 0

version := 1.3
lastUpdate = "21.02.2020"

file = C:\Games\Files_for_AHK\version.ini
FileDelete, %file%
SplashTextOn, 250, 22, AoP Master by ABulkin, Проверка обновлений
URLDownloadToFile, https://raw.githubusercontent.com/fawjoAHK/AHK/83e9581d11182629114b7b8520bb35b98870ccf2/version.ini, C:\Games\Files_for_AHK\version.ini
sleep 300
SplashTextOff

sleep 300 

IniRead, ver, C:\Games\Files_for_AHK\version.ini, VER, ver

if (version != ver) ; Если твоя версия ниже той которая в файле
{
Gui, Font, s11, Verdana
Gui, Add, Link, x20 y10 w600 h100, <a href=""></a>Доступно новое обновление до версии %ver% `n`nДля того, чтобы скачать новую версию скрипта перейдите по одной из следующих ссылок. Если ссылки вдруг не работают, обратитесь к <a href="https://vk.com/id541845980">разработчику</a>.
Gui, Font, s9
Gui, Add, Button, x20 y115 w260 h22, Скачать программу в формате (.exe)
Gui, Add, Button, x20 y145 w260 h22 , Скачать программу позже
Gui, Font, s11, Verdana
Gui, Add, Link, x20 y210 w200 h30, Обновления:
Gui, Font, s9
Gui, Add, Link, x20 y225, %ver%:`nСоздан скрипт.`nПомощь - /cmd`nЕсли у вас есть предложения по улучшению или`nвы нашли баг можете сообщить о них разработчику скрипта.`n
Gui, Add, Link, x20 y300, Лог обновлений можно посмотреть введя команду /olog
Gui, Show, Center, AoP Master Update
}
else 
{
MsgBox, 68, АHK для отдела КР, Запускать следует от имени Администратора!                               Ты запустил верно?
IfMsgBox Yes
{
}
Else
{
ExitApp
}
IniRead, zvan, C:\Games\Files_for_AHK\info.egl, USER, zvan
IniRead, job, C:\Games\Files_for_AHK\info.egl, USER, job
IniRead, name, C:\Games\Files_for_AHK\info.egl, USER, name
IniRead, surname, C:\Games\Files_for_AHK\info.egl, USER, surname
IniRead, inc, C:\Games\Files_for_AHK\info.egl, USER, inc
main:
Gui, 3:Destroy
Gui, 4:Destroy
Gui Font
Gui Font, s30 w600 cGreen, Times New Roman
Gui Add, Text, x190 y20 w600 h50 +0x200, Комендантская Рота
Gui Font, s14 w600 cGreen, Times New Roman
Gui Add, Button, x50 y100 w300 h50 gYmo, Устав
Gui Add, Button, w300 h50 gRuk, Для руководителей
Gui Add, Button, w300 h50 gAhko, АХК (Основное)
Gui Add, Button, x400 y100 w300 h50 gKr, Комендантская Рота
Gui Add, Button, w300 h50 gInvite, Система баллов УСП
Gui Add, Button, w300 h50 gAhkn, АХК (Наряды)
Gui Add, Button, x230 y330 w300 h50 gControls, Настройки
Gui, Show, h400 w750, АХК для служащих Комендансткой Роты v. %version%
return
}
ymo:
Sleep 50
Run, https://forum.gtaprovince.ru/topic/502258-federalnyy-zakon-o-voinskoy-obyazannosti-i-voennoy-sluzhbe/
return
kr:
Sleep 50
Run, https://forum.gtaprovince.ru/topic/646271-komendantskaya-rota-kr/
return
ruk:
if (Ruk_Sost=0) 
{
  InputBox, pass, Пароль, Доступ только для руководителей. Введите пароль: ,HIDE,,,,,,,
  If (pass!=520978)
  {
    tooltip, Нет доступа!
    sleep 2000
    ExitApp
  }
  Else
  {
      Ruk_Sost = 1
  }
}
IniRead, zvan, C:\Games\Files_for_AHK\info.egl, USER, zvan
IniRead, job, C:\Games\Files_for_AHK\info.egl, USER, job
IniRead, name, C:\Games\Files_for_AHK\info.egl, USER, name
IniRead, surname, C:\Games\Files_for_AHK\info.egl, USER, surname
IniRead, inc, C:\Games\Files_for_AHK\info.egl, USER, inc
Gui, Destroy
Gui, 3:Font, s18 w800 cGreen, Times New Roman
Gui, 3:add, text, x60 y20 w999 h36 +0x200, Руководящий состав
Gui, 3:Font, S10 C000000, Times New Roman
Gui, 3:Font, S12 CDefault Bold, Times New Roman
Gui, 3:Add, Text, x10 y90 w100 h20 , /строй(1-2)
Gui, 3:Add, Text, x10 y120 w100 h20 , /мп(1-2)
Gui, 3:Add, Text, x10 y150 w100 h20 , /трен(1-2)
Gui, 3:Add, Text, x10 y180 w100 h20 , /учен(1-2)
Gui, 3:Add, Text, x10 y210 w100 h20 , /экз(1-2)
Gui, 3:Add, Text, x10 y240 w100 h20 , /смп(1-2)
Gui, 3:Add, Text, x10 y270 w100 h20 , /нво
Gui, 3:Add, Text, x10 y300 w100 h20 , /увал(1-2)
Gui, 3:Add, Text, x10 y330 w100 h20 , /лек(1-10)
Gui, 3:Add, Text, x10 y360 w100 h20 , /кар(1-2)
Gui, 3:Add, Text, x95 y90 w25 h20 , -
Gui, 3:Add, Text, x95 y120 w25 h20 , -
Gui, 3:Add, Text, x95 y150 w25 h20 , -
Gui, 3:Add, Text, x95 y180 w25 h20 , -
Gui, 3:Add, Text, x95 y210 w25 h20 , -
Gui, 3:Add, Text, x95 y240 w25 h20 , -
Gui, 3:Add, Text, x95 y270 w25 h20 , -
Gui, 3:Add, Text, x95 y300 w25 h20 , -
Gui, 3:Add, Text, x95 y330 w25 h20 , -
Gui, 3:Add, Text, x95 y360 w25 h20 , -
Gui, 3:Add, Text, x115 y90 w280 h20 , Объявить строй.
Gui, 3:Add, Text, x115 y120 w280 h20 , Объявить МП.
Gui, 3:Add, Text, x115 y150 w280 h20 , Объявить тренировку.
Gui, 3:Add, Text, x115 y180 w280 h20 , Объявить учение.
Gui, 3:Add, Text, x115 y210 w280 h20 , Объявить экзамен. 
Gui, 3:Add, Text, x115 y240 w280 h20 , Объявить совместное МП.
Gui, 3:Add, Text, x115 y270 w280 h20 , Объявить нво.
Gui, 3:Add, Text, x115 y300 w280 h20 , Выдать/забрать увал.
Gui, 3:Add, Text, x115 y330 w280 h20 , Лекции.
Gui, 3:Add, Text, x115 y360 w280 h20 , Посадить в карцер.
Gui Font, s14 w600 cGreen, Times New Roman
Gui, 3:Add, Button, x60 y400 w200 h50 gMain, Главная
Gui 3:Font
gui 3:Show, h460 w320, Комендантская Рота
return
invite:
Sleep 50
Run, https://forum.gtaprovince.ru/topic/646249-sistema-ballov-usp/
return
ahkn:
IniRead, zvan, C:\Games\Files_for_AHK\info.egl, USER, zvan
IniRead, job, C:\Games\Files_for_AHK\info.egl, USER, job
IniRead, name, C:\Games\Files_for_AHK\info.egl, USER, name
IniRead, surname, C:\Games\Files_for_AHK\info.egl, USER, surname
IniRead, inc, C:\Games\Files_for_AHK\info.egl, USER, inc
Gui, Destroy
Gui, 3:Font, s35 w600 cGreen, Times New Roman
Gui, 3:add, text, x270 y20 w900 h100 cGreen, Команды для нарядов
Gui, 3:Font, S10 C000000, Times New Roman
Gui, 3:Font, S12 CDefault Bold, Times New Roman
Gui, 3:Add, Text, x10 y120 w80 h20 , /пост(1-5)
Gui, 3:Add, Text, x10 y150 w80 h20 , /ово(1-6)
Gui, 3:Add, Text, x10 y180 w80 h20 , /патрп(1-5)
Gui, 3:Add, Text, x10 y210 w80 h20 , /патра(1-5)
Gui, 3:Add, Text, x105 y120 w25 h20 , -
Gui, 3:Add, Text, x105 y150 w25 h20 , -
Gui, 3:Add, Text, x105 y180 w25 h20 , -
Gui, 3:Add, Text, x105 y210 w25 h20 , -
Gui, 3:Add, Text, x130 y120 w280 h20 , Постовой контроль.
Gui, 3:Add, Text, x130 y150 w280 h20 , Охр.важн.объектов.
Gui, 3:Add, Text, x130 y180 w280 h20 , Патруль (пеший).
Gui, 3:Add, Text, x130 y210 w280 h20 , Патруль (авто).
Gui, 3:Font, S12 CDefault Bold, Times New Roman
Gui, 3:Add, Text, x400 y120 w105 h20 , /пп(1-6)
Gui, 3:Add, Text, x400 y150 w105 h20 , /по(1-5)
Gui, 3:Add, Text, x400 y180 w105 h20 , /пов(1-5)
Gui, 3:Add, Text, x400 y210 w105 h20 , /п(1-5)
Gui, 3:Add, Text, x500 y120 w50 h20 , -
Gui, 3:Add, Text, x500 y150 w50 h20 , -
Gui, 3:Add, Text, x500 y180 w50 h20 , -
Gui, 3:Add, Text, x500 y210 w50 h20 , -
Gui, 3:Add, Text, x540 y120 w200 h20 , Поставка (провиант).
Gui, 3:Add, Text, x540 y150 w200 h20 , Пост "Охрана".
Gui, 3:Add, Text, x540 y180 w200 h20 , Повестки.
Gui, 3:Add, Text, x540 y210 w200 h20 , Поставка (стандарт).
Gui, 3:Font, S12 CDefault Bold, Times New Roman
Gui, 3:Add, Text, x770 y120 w105 h20 , /пмвд(1-7)
Gui, 3:Add, Text, x770 y150 w105 h20 , /пмз(1-7)
Gui, 3:Add, Text, x770 y180 w105 h20 , /псг(1-7)
Gui, 3:Add, Text, x770 y210 w105 h20 , /патро(1-4)
Gui, 3:Add, Text, x850 y120 w50 h20 , -
Gui, 3:Add, Text, x850 y150 w50 h20 , -
Gui, 3:Add, Text, x850 y180 w50 h20 , -
Gui, 3:Add, Text, x850 y210 w50 h20 , -
Gui, 3:Font, S12 CDefault Bold, Times New Roman
Gui, 3:Add, Text, x875 y120 w180 h20 , Поставка (МВД).
Gui, 3:Add, Text, x875 y150 w180 h20 , Поставка (МЗ).
Gui, 3:Add, Text, x875 y180 w180 h20 , Поставка (Спец.груз).
Gui, 3:Add, Text, x875 y210 w180 h20 , Патруль (Offroad).
Gui Font, s14 w600 cGreen, Times New Roman
Gui, 3:Add, Button, x380 y250 w300 h50 gMain, Главная
Gui 3:Font
gui 3:Show, w1080 h310, Комендантская Рота
return
controls:
Gui, 2:Destroy
Gui Font
Gui 2:Font, s23 w800 cGreen, Times New Roman
Gui 2:Add, Text, x100 y10 w999 h36 +0x200, Настройки
IniRead, zvan, C:\Games\Files_for_AHK\info.egl, USER, zvan
IniRead, job, C:\Games\Files_for_AHK\info.egl, USER, job
IniRead, name, C:\Games\Files_for_AHK\info.egl, USER, name
IniRead, surname, C:\Games\Files_for_AHK\info.egl, USER, surname
IniRead, inc, C:\Games\Files_for_AHK\info.egl, USER, inc
Gui 2:Font
Gui 2:Font, s14 w800, Times New Roman
Gui, 2:Add, Text, x50 y60 w205 h23 +0x200, Выберите звание:
Gui 2:Add, DropDownList, x50 y100 w246 vZvan, Прапорщик|Лейтенант|Ст.Лейтенант|Капитан|Майор|Полковник
Gui, 2:Add, Text, x50 y150 w205 h23 +0x200, Введите ваш тег:
Gui 2:Add, Edit, x50 y190 w246 vJob, %job%
Gui, 2:Add, Text, x50 y240 w205 h23 +0x200, Ваше имя:
Gui 2:Add, Edit, x50 y280 w246 vName, %name%
Gui, 2:Add, Text, x50 y330 w205 h23 +0x200, Ваша фамилия:
Gui 2:Add, Edit, x50 y370 w246 vSurname, %surname%
Gui 2:Add, Text, x50 y420 w246, Инициалы:
Gui 2:Add, Edit, x50 y460 w246 h35 vInc, %inc%
Gui, 2:Add, Button, x110 y500 w130 h30 vSync gSync, Сохранить
Gui, 2:Show, h550 w350, Настройки
return
sync:
gui,submit,nohide
FileCreateDir, C:\Games\Files_for_AHK
MsgBox,%job% %zvan% %surname% %name% [%surname% %inc%]
Gui Tab
Сохранить:
Gui, submit, nohide
IniWrite, %zvan%, C:\Games\Files_for_AHK\info.egl, USER, zvan
IniWrite, %job%, C:\Games\Files_for_AHK\info.egl, USER, job
IniWrite, %name%, C:\Games\Files_for_AHK\info.egl, USER, name
IniWrite, %surname%, C:\Games\Files_for_AHK\info.egl, USER, surname
IniWrite, %inc%, C:\Games\Files_for_AHK\info.egl, USER, inc
Gui, 2:Destroy
return
ahko:
IniRead, zvan, C:\Games\Files_for_AHK\info.egl, USER, zvan
IniRead, job, C:\Games\Files_for_AHK\info.egl, USER, job
IniRead, name, C:\Games\Files_for_AHK\info.egl, USER, name
IniRead, surname, C:\Games\Files_for_AHK\info.egl, USER, surname
IniRead, inc, C:\Games\Files_for_AHK\info.egl, USER, inc
Gui, Destroy
Gui, 3:Font, s35 w600 cGreen, Times New Roman
Gui, 3:add, text, x300 y20 w900 h100 cGreen, Комендантская Рота
Gui, 3:Font, S10 C000000, Times New Roman
Gui, 3:Font, S12 CDefault Bold, Times New Roman
Gui, 3:Add, Text, x10 y120 w80 h20 , alt+1
Gui, 3:Add, Text, x10 y150 w80 h20 , alt+2
Gui, 3:Add, Text, x10 y180 w80 h20 , alt+3
Gui, 3:Add, Text, x10 y210 w80 h20 , alt+4
Gui, 3:Add, Text, x10 y240 w80 h20 , alt+5
Gui, 3:Add, Text, x10 y270 w80 h20 , alt+6
Gui, 3:Add, Text, x10 y300 w80 h20 , alt+7
Gui, 3:Add, Text, x10 y330 w80 h20 , alt+8
Gui, 3:Add, Text, x10 y360 w100 h20 , alt+Num0
Gui, 3:Add, Text, x10 y390 w100 h20 , alt+Num1
Gui, 3:Add, Text, x105 y120 w25 h20 , -
Gui, 3:Add, Text, x105 y150 w25 h20 , -
Gui, 3:Add, Text, x105 y180 w25 h20 , -
Gui, 3:Add, Text, x105 y210 w25 h20 , -
Gui, 3:Add, Text, x105 y240 w25 h20 , -
Gui, 3:Add, Text, x105 y270 w25 h20 , -
Gui, 3:Add, Text, x105 y300 w25 h20 , -
Gui, 3:Add, Text, x105 y330 w25 h20 , -
Gui, 3:Add, Text, x105 y360 w25 h20 , -
Gui, 3:Add, Text, x105 y390 w25 h20 , -
Gui, 3:Add, Text, x125 y120 w280 h20 , Нашивка.
Gui, 3:Add, Text, x125 y150 w280 h20 , Воинское приветствие.
Gui, 3:Add, Text, x125 y180 w280 h20 , Запрос на документы.
Gui, 3:Add, Text, x125 y210 w280 h20 , Цель визита?
Gui, 3:Add, Text, x125 y240 w280 h20 , Покиньте ВЧ.
Gui, 3:Add, Text, x125 y270 w280 h20 , Последнее предупреждение.
Gui, 3:Add, Text, x125 y300 w280 h20 , Стоять! Стрелять буду!
Gui, 3:Add, Text, x125 y330 w280 h20 , Всего доброго!
Gui, 3:Add, Text, x125 y360 w280 h20 , Поставка в руки.
Gui, 3:Add, Text, x125 y390 w280 h20 , Поставка в кузов.
Gui, 3:Font, S12 CDefault Bold, Times New Roman
Gui, 3:Add, Text, x400 y120 w105 h20 , alt+T
Gui, 3:Add, Text, x400 y150 w105 h20 , ctrl+T
Gui, 3:Add, Text, x400 y180 w105 h20 , alt+Y
Gui, 3:Add, Text, x400 y210 w105 h20 , ctrl+Y
Gui, 3:Add, Text, x400 y240 w105 h20 , alt+End
Gui, 3:Add, Text, x400 y270 w105 h20 , alt+Home
Gui, 3:Add, Text, x400 y300 w105 h20 , alt+Q
Gui, 3:Add, Text, x400 y330 w105 h20 , alt+E
Gui, 3:Add, Text, x400 y360 w105 h20 , alt+Num2
Gui, 3:Add, Text, x400 y390 w105 h20 , alt+Num3
Gui, 3:Add, Text, x500 y120 w50 h20 , -
Gui, 3:Add, Text, x500 y150 w50 h20 , -
Gui, 3:Add, Text, x500 y180 w50 h20 , -
Gui, 3:Add, Text, x500 y210 w50 h20 , -
Gui, 3:Add, Text, x500 y240 w50 h20 , -
Gui, 3:Add, Text, x500 y270 w50 h20 , -
Gui, 3:Add, Text, x500 y300 w50 h20 , -
Gui, 3:Add, Text, x500 y330 w50 h20 , -
Gui, 3:Add, Text, x500 y360 w50 h20 , -
Gui, 3:Add, Text, x500 y390 w50 h20 , -
Gui, 3:Add, Text, x515 y120 w200 h20 , r чат (с тегом).
Gui, 3:Add, Text, x515 y150 w200 h20 , rb чат.
Gui, 3:Add, Text, x515 y180 w200 h20 , b чат.
Gui, 3:Add, Text, x515 y210 w200 h20 , Откат рации.
Gui, 3:Add, Text, x515 y240 w210 h20 , База (find).
Gui, 3:Add, Text, x515 y270 w200 h20 , Часы.
Gui, 3:Add, Text, x515 y300 w200 h20 , Рация ON.
Gui, 3:Add, Text, x515 y330 w200 h20 , Рация OFF.
Gui, 3:Add, Text, x515 y360 w200 h20 , Поставка из кузова.
Gui, 3:Add, Text, x515 y390 w200 h20 , Поставка на землю.
Gui, 3:Add, Text, x770 y120 w105 h20 , /уд
Gui, 3:Add, Text, x770 y150 w105 h20 , /кпп1
Gui, 3:Add, Text, x770 y180 w105 h20 , /кпп2
Gui, 3:Add, Text, x770 y210 w105 h20 , /техн
Gui, 3:Add, Text, x770 y240 w105 h20 , /заст
Gui, 3:Add, Text, x770 y270 w105 h20 , /отд
Gui, 3:Add, Text, x770 y300 w105 h20 , /пок
Gui, 3:Add, Text, x770 y330 w105 h20 , Alt+=
Gui, 3:Add, Text, x770 y360 w105 h20 , Alt+F1
Gui, 3:Add, Text, x770 y390 w105 h20 , Alt+F2
Gui, 3:Add, Text, x850 y120 w50 h20 , -
Gui, 3:Add, Text, x850 y150 w50 h20 , -
Gui, 3:Add, Text, x850 y180 w50 h20 , -
Gui, 3:Add, Text, x850 y210 w50 h20 , -
Gui, 3:Add, Text, x850 y240 w50 h20 , -
Gui, 3:Add, Text, x850 y270 w50 h20 , -
Gui, 3:Add, Text, x850 y300 w50 h20 , -
Gui, 3:Add, Text, x850 y330 w50 h20 , -
Gui, 3:Add, Text, x850 y360 w50 h20 , -
Gui, 3:Add, Text, x850 y390 w50 h20 , -
Gui, 3:Add, Text, x875 y120 w180 h20 , Удостоверение.
Gui, 3:Add, Text, x875 y150 w180 h20 , Открыть шлагбаум.
Gui, 3:Add, Text, x875 y180 w180 h20 , Закрыть шлагбаум.
Gui, 3:Add, Text, x875 y210 w180 h20 , Запросить взять т/с.
Gui, 3:Add, Text, x875 y240 w180 h20 , Заступил на смену.
Gui, 3:Add, Text, x875 y270 w180 h20 , Перерыв.
Gui, 3:Add, Text, x875 y300 w180 h20 , Покинул смену.
Gui, 3:Add, Text, x875 y330 w180 h20 , Откат в /n.
Gui, 3:Add, Text, x875 y360 w180 h20 , /d [тег]
Gui, 3:Add, Text, x875 y390 w180 h20 , /db 
Gui Font, s14 w600 cGreen, Times New Roman
Gui, 3:Add, Button, x380 y430 w300 h50 gMain, Главная
Gui 3:Font
gui 3:Show, w1080 h500, Комендантская Рота
return
mainmenu:
Gui, 3:Destroy
return
!1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, Здравия желаю, %zvan% Комендантской Роты %surname%. {enter}
SendInput, {F6}
sleep 500
SendInput, /do На нашивке военнослужащего надпись [%surname% %inc%], на шевроне - [Комендантская Рота]. {enter}
return

!2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /say Здравия желаю{!} %zvan% Комендантской Роты, %surname% %name%. {enter}
SendInput, {F6}
sleep 150
SendInput, /animarmy 3 {enter}
return

!3::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /say Гражданин, пожалуйста, предъявите Ваши документы на проверку. {enter}
SendInput, {F6}
sleep 500
SendInput, /b [Совет]|: Чтобы передать документ - /me передал документ | /pass [ID]. {enter}
return

!4::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /say Цель вашего визита на территорию воинской части? {enter}
return

!5::
SendInput, {F6}
sleep 150
SendInput, /s Гражданин, покиньте территорию охраняемого военного объекта{!} {enter}
return

!6::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 200
SendInput, /s В случае неповиновения будет открыт огонь{!} {enter}
return

!7::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 200
SendInput, /s Стоять{!} Стрелять буду{!} {enter}
return

!8::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 200
SendInput, /say Всего доброго! Удачи! {enter}
return

!NumPad0::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /do Ящик с поставкой на земле. {enter}
SendInput, {F6}
sleep 500
SendInput, /me схватил ящик с поставкой обеими руками {enter}
return

!NumPad1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150 
SendInput, /me положил ящик с поставкой в кузов {enter}
SendInput, {F6}
sleep 500
SendInput, /do Ящик с поставкой в кузове. {enter}
return

!NumPad2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150 
SendInput, /do Ящик с поставкой в кузове. {enter}
SendInput, {F6}
sleep 500 
SendInput, /me вытащил ящик из кузова {enter}
return

!NumPad3::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150 
SendInput, /me положил ящик на землю {enter}
SendInput, {F6}
sleep 500 
SendInput, /do Ящик на земле. {enter}
return

!Q::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /do Рация висит на поясе. {enter}
SendInput, {F6}
sleep 500
SendInput, /me снял рацию с пояса и начал говорить в нее {enter}
SendInput, {F6}
sleep 500
SendInput, /fracvoice 1 {enter}
return

!E::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /do Рация в руке. {enter}
SendInput, {F6}
sleep 500
SendInput, /me повесил рацию на пояс {enter}
SendInput, {F6}
sleep 500
SendInput, /fracvoice 0 {enter}
return

!HOME::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /me взглянул на армейские часы "Звезда" с фирменной гравировкой "ВЧ 1017 - Комендантская Рота"{Enter}
m = 60
m -= %A_Min%
s = 60
s -= %A_Sec%
SendInput, {F6}
sleep 500
SendInput, /do Время на часах | %A_Hour%:%A_Min%:%A_Sec% | Дата : %A_DD%.%A_MM%.%A_YYYY% | .{Enter}
SendInput, {F6}
sleep 500
SendInput, /paytime {Enter}
SendInput, {F6}
sleep 500
SendInput, /time {Enter}
SendInput, {F6}
sleep 500
SendInput, /exptime {Enter}
Return

!END::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /do В правом кармане штанов лежит КПК. {enter}
SendInput, {F6}
sleep 1000
SendInput, /me легким движением руки достал КПК {enter}
SendInput, {F6}
sleep 1000
SendInput, /me зашел в базу данных армии {enter}
SendInput, {F6}
sleep 1000
SendInput, /me открыл список военнослужащих {enter}
SendInput, {F6}
sleep 1000
SendInput, /find {enter}
return

!T::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /r [%job%] {space}
return

^T::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /rb {space}
return

!=::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /n Откат | Приснилось | Показалось| С любовью {Enter}
return

:?:/лим::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /speed_limit 40 {Enter}
return

!Y::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /b {space}
return

!F1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ ТЕГ ОРГАНИЗАЦИИ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /d [%Var1%] {space}
return

!F2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /db {space}
return

^Y::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /r [%job%] Рация упала. {enter}
return

:?:/уд::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ ИД СЛУЖАЩЕГО, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, Здравия желаю{!} %zvan% %surname%. Комендантская Рота. {enter}
SendInput, {F6}
sleep 1000
SendInput, /do Удостоверение в кармане. {enter}
SendInput, {F6}
sleep 1000
SendInput, /me достав удостоверение из кармана, предъявил его человеку напротив {enter}
SendInput, {F6}
sleep 1000
SendInput, /ud %Var1% {enter}
SendInput, {F6}
sleep 3000
SendInput, /say Ознакомились?{enter}
SendInput, {F6}
sleep 1000
SendInput, /me закрыв удостоверение, убрал его в карман {enter}
SendInput, {F6}
sleep 1000
SendInput, /do Удостоверение в кармане. {enter}
return

:?:/кпп1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /me нажал кнопку поднятия шлакбаума {enter}
SendInput, {F6}
sleep 150
SendInput, /do Шлакбаум пришел в движение. {enter}
SendInput, {F6}
sleep 150
SendInput, /armygate {enter}
return

:?:/кпп2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /me нажал кнопку опуска шлакбаума {enter}
SendInput, {F6}
sleep 150
SendInput, /do Шлакбаум пришел в движение. {enter}
SendInput, {F6}
sleep 150
SendInput, /armygate {enter}
return

:?:/техн::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 1000
SendInput, /r [%job%] 205-G {Space}
return

:?:/заст::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /r [%job%] 133-01. {enter}
return

:?:/отд::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /r [%job%] 133-03. {enter}
return

:?:/пок::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /r [%job%] 133-02. {enter}
return

:?:/строй1::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ МЕСТО, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ ВРЕМЯ (ЦИФРА), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, /r [%job%] Строй отдела КР. Место: %Var1%. Готовность: %Var2% мин. {enter}
SendInput, {F6}
sleep 1000
SendInput, /r [%job%] Остальные отделы по желанию. {enter}
return

:?:/строй2::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 1000
SendInput, /r [%job%] Отмена строя! {enter}
return

:?:/мп1::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НАЗВАНИЕ МП, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, /say Сейчас пройдет мероприятие "%Var1%"! {enter}
return

:?:/мп2::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НАЗВАНИЕ МП, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, /say Мероприятие "%Var1%" окончено! {enter}
return

:?:/смп1::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НАЗВАНИЕ МП, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ ОРГУ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, /say Сейчас продет совместное МП с %Var2% "%Var1%"!  {enter}
return

:?:/смп2::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НАЗВАНИЕ МП, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ ОРГУ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, /say Совместное МП с %Var2% "%Var1%" окончено!  {enter}
return

:?:/трен1::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НАЗВАНИЕ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, /say Сейчас пройдет тренировка "%Var1%"! {enter}
return

:?:/трен2::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НАЗВАНИЕ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, /say Тренировка "%Var1%" окончена! {enter}
return

:?:/учен1::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НАЗВАНИЕ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, /say Сейчас пройдет учение: "%Var1%"! {enter}
return

:?:/учен2::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НАЗВАНИЕ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, /say Учение "%Var1%" окончено! {enter}
return

:?:/экз1::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ ЭКЗАМЕН, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, /say Сейчас пройдет экзамен на "%Var1%"! {enter}
return

:?:/экз2::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ ЭКЗАМЕН, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ сдали/не сдали, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, /say Вы %Var2% экзамен на "%Var1%"! {enter}
return

:?:/нво::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ ИД, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, /say Объявляю вам один наряд вне очереди! {enter}
SendInput, {F6}
sleep 1000
SendInput, /givetask %Var1% {enter}
return

:?:/увал1::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ ИД, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, /do Планшет с увольнительными записками на плече. {enter}
SendInput, {F6}
sleep 1000
SendInput, /me открыл планшет и достал ручку с увольнительной запиской {enter}
SendInput, {F6}
sleep 1000
SendInput, /me заполнил увольнительную записку и передал ее человеку напротив {enter}
SendInput, {F6}
sleep 1000
SendInput, /giveuval %Var1% {enter}
return

:?:/увал2::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ ИД, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 100
SendInput, /do В правом внутреннем кармане лежит КПК. {enter}
SendInput, {F6}
sleep 1000
SendInput, /me легким движением руки достал КПК из правого кармана {enter}
SendInput, {F6}
sleep 1000
SendInput, /me открыл список военнослужащих {enter}
SendInput, {F6}
sleep 1000
SendInput, /me напротив нужного военнослужащего нажал "Анулировать увальнительное" {enter}
SendInput, {F6}
sleep 1000
SendInput, /do Увольительное анулировано успешно. {enter}
SendInput, {F6}
sleep 1000
SendInput, /me положил КПК в правый внутренний карман {enter}
SendInput, {F6}
sleep 1000
SendInput, /removeuval %Var1% {enter}
return

:?:/пост1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НАЗВАНИЕ ПОСТА, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: 148-11 "%Var1%".{Enter}
return

:?:/пост2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НАЗВАНИЕ ПОСТА, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: Заступил на постовой контроль, нахожусь на точке "%Var1%".{Enter}
return

:?:/пост3::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НАЗВАНИЕ ПОСТА, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ СОСТОЯНИЕ(1,2,3), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: Продолжаю стоять на постовом контроле. Точка "%Var1%". 131-0%Var2%А.{Enter}
return

:?:/пост4::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НАЗВАНИЕ ПОСТА, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ СОСТОЯНИЕ(1,2,3), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: Сдал постовой контроль на точке "%Var1%". 131-0%Var2%А.{Enter}
return

:?:/пост5::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: 148-77.{Enter}
return


:?:/патрп1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: 148-33.{Enter}
return

:?:/патрп2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /ВВЕДИТЕ СОСТОЯНИЕ(1,2,3), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Продолжаем патрулирование территории. 131-0%Var1%С.{Enter}
return

:?:/патрп3::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НОМЕР ТОЧКИ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ СОСТОЯНИЕ(1,2,3), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: Прибыл на точку "%Var1%". 131-0%Var2%С.{Enter}
return

:?:/патрп4::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: Закончили патрулирование территории.{Enter}
return

:?:/патрп5::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: 148-77.{Enter}
return

:?:/ово1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НАЗВАНИЕ ОБЪЕКТА, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: 148-55. "%Var1%". {Enter}
return

:?:/ово2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: 214-15. {Enter}
return

:?:/ово3::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /ВВЕДИТЕ СОСТОЯНИЕ(1,2,3), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: Продолжаем патрулирование территории. 131-0%Var1%С. {Enter}
return

:?:/ово4::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /ВВЕДИТЕ СОСТОЯНИЕ(1,2,3), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: Прибыл на следующую точку. 131-0%Var1%С. {Enter}
return

:?:/ово5::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: Закончили патрулирование территории. {Enter}
return

:?:/ово6::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: 148-77. {Enter}
return

:?:/пов1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, /ПЕРВАЯ БУКВА ГОРОДА(лат), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 148-44. %Var1%.
return

:?:/пов2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 214-15.
return

:?:/пов3::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 1000
SendInput, /do Планшет с повестками на плече. {Enter}
SendInput, {F6}
sleep 1000
SendInput, /me открыл планшет и достал повестку с самоклеящейся лентой {Enter}
SendInput, {F6}
sleep 1000
SendInput, /me отделил самоклеющуюся ленту от повестки {Enter}
SendInput, {F6}
sleep 1000
SendInput, /me приклеил повестку на дверь {Enter}
SendInput, {F6}
sleep 1000
SendInput, /me положил остаточный мусор в планшет {Enter}
SendInput, {F6}
sleep 1000
SendInput, /me закрыл планшет {Enter}
return

:?:/пов4::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 167-11.
return

:?:/пов5::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 148-77.
return

:?:/патра1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ ГОРОД, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 148-22 "%Var1%".
return


:?:/патра2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ ГОРОД, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ КВАДРАТ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ СОСТОЯНИЕ(1-3), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var3, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Прибыли в "%Var1%", начинаем патрулирование. %Var2%. 131-0%Var3%B.
return

:?:/патра3::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ ГОРОД, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НОМЕР КВАДРАТА, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ СОСТОЯНИЕ(1,2,3), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var3, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Продолжаем патрулирование города "%Var1%". %Var2%. 131-0%Var3%B.
return

:?:/патра4::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ ГОРОД, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ СОСТОЯНИЕ(1,2,3), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Закончили патрулирование города "%Var1%". 131-0%Var2%B.
return

:?:/патра5::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 148-77.
return

:?:/лек1::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 1500
SendInput, /s Здравия желаю{!} {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Сейчас я проведу лекцию на тему "Субординация". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Субординация — военная дисциплина, система служебных отношений, связанных с подчинением. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Она предусматривает уважительные отношения между руководителем и подчинённым. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s А также порядка доклада результатов выполнения распоряжения руководителей. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Так же для обращения к старшему по званию, нужно сказать "т.Звание". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Примеры обращения и замены неправильных слов: {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s "Здравствуйте" на "Здравия желаю". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s "Да" на "Так точно". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s "Нет" на "Никак нет". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s "Можно?" на "Разрешите?". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s "Не знаю" - "Не могу знать". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s "Ладно, хорошо" на "Есть". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Несоблюдение субординации - это нарушение закона, за которое вы получите наказание. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Лекция на эту тему закончена. Спасибо за внимание. {Enter}
return


:?:/лек2::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 1500
SendInput, /s Здравия желаю{!} {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Сейчас я проведу лекцию на тему "Рация, её назначение". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Рация — это источник связи с коллегами полиции,для передачи важной информации. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s В рации звучит такая информация, как доклады с постов и тому подобное. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s В рации запрещены всякие оскорбления, мат, угрозы. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s В рацию запрещено сообщать бессмысленную информацию.{Enter}
SendInput, {F6}
sleep 1500
SendInput, /s За нарушение данных правил вы будете наказаны. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Лекция на эту тему закончена. Спасибо за внимание. {Enter}
Return


:?:/лек3::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 1500
SendInput, /s Здравия желаю{!} {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Сейчас я проведу лекцию на тему "Правила поведения на тренировке". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s С самого начала я хочу сказать, что такое тренеровка. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Тренеровка - это осмысленная физическая деятельность, направленная на развитие силы... {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s выносливости, ловкости, техничности, скорости и других физических и психологических навыков. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 1. Слушаться старших по званию. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 2. Доставать оружие только по приказу. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 3. Соблюдать дисциплину строя. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 4. Если Вы будете спать в строю, Вы можете быть подвергнуты наказанию. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 5. Если вы устали, вы можете подойти к тому кто организовал тренировку и попросить отдохнуть. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 6. С разрешения Вы можете не являться на тренировку. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s А на этом наша лекция подошла к концу. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Спасибо за внимание. {Enter}
return


:?:/лек4::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 1500
SendInput, /s Здравия желаю{!} {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Сейчас я проведу лекцию на тему "О запретах служащим Армии". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Правовой статус служащего Армии закреплен в Федеральном законе "О воинской обязанности и военной службе". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Не стоит забывать и про Кодекс государственной службы. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 4.3. Закона гласит: Служащему армии запрещено... {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 1. Пребывать на смене без бронежилета. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 2. Находится в рабочее время в алкогольном опьянении, а также употреблять алкогольные напитки будучи на смене. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 3. Перемещаться по плацу вне строя. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 4. Использовать форму спецназа служащим других отделов, если не поступило соответствующее распоряжение от высшего офицерского состава. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 5. Нарушать правила движения и парковки на ВЧ. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 6. Нарушать правила поведения в строю. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 7. Вызывать другие государственные службы без причины в черную зону и фиолетовую территорию. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 8. Пропускать в красную, черную зоны и на фиолетовую территорию гражданских лиц без причин. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 9. Самовольно брать дополнительный наряд. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 10. Находиться на крышах зданий, расположенных на ВЧ, без причин. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 11. Посещать генеральный штаб без разрешения от руководства организации. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s 12. Нарушать законодательство в том числе заниматься любой преступной деятельностью. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s А на этом наша лекция подошла к концу. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Спасибо за внимание. {Enter}
return

:?:/лек5::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 1500
SendInput, /s Здравия желаю{!} {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Сейчас я проведу лекцию на тему "Комендантская Рота". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Комендантская Рота - это вид вооружённых сил Республики Провинция... {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Предназначенный для обеспечения безопасности воинской части, патрульной деятельности... {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Выполнения задач логистики и снабжения. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s В состав отдела входит специальное подразделение Военной Полиции... {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s В задачи которого дополнительно включено обеспечение порядка и воинской дисциплины. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Сфера деятельности Комендансткой Роты: {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Наземеные патрули, доставка грузов, проведение агитационной работы, защита воинской части и любых военных формирований... {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Помощь штурмовым группам в ходе контртеррористических операций, эвакуация военнослужащих или иных лиц по приказу... {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Участие в активностях армии, помощь иным отделам армии с их обязанностями. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s А на этом наша лекция подошла к концу. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Спасибо за внимание. {Enter}
return

:?:/лек6::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 1500
SendInput, /s Здравия желаю{!} {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Сейчас я проведу лекцию на тему "Транспорт для служащих Комендантской Роты". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Всего в автопарке отдела находятся 11 видов техники. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Lada Urban - со звания Прапорщик. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Газ 3110 - со звания Прапорщик. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Kia Optima - со звания Старший Лейтенант. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Ford Focus 3 - со звания Капитан. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Уаз 2206 (Буханка) - со звания Лейтенант. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Паз-32053 - доступен только Руководсту или по их разрешению. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Икарус 250.59 - доступен только Руководсту или по их разрешению. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Газ Тигр - со звания Старший Лейтенант. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s КамАЗ 5350 - со звания Прапорщик, исключительно для целевого использования. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s БТР-82а - со звания Майор. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s УАЗ Патриот - исключительно для Руководящего состава. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s А на этом наша лекция подошла к концу. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Спасибо за внимание. {Enter}
return

:?:/лек7::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 1500
SendInput, /s Здравия желаю{!} {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Сейчас я проведу лекцию на тему "ГАЗ Тигр". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Тигр - многоцелевой автомобиль повышенной проходимости, бронеавтомобиль, армейский автомобиль-вседорожник. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Автомобиль предназначен для перевозки людей и различных грузов по дорогам и бездорожью. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Представляет собой шасси рамной конструкции, несущее на себе основную часть агрегатов и кузов. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Кузов автомобиля цельнометаллический однообъёмный пятидверный с грузовым отсеком.  {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Рассчитан на перевозку четырёх человек и до 1500 кг груза. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Двигатель Cummins B205, шестицилиндровый рядный, с турбонаддувом 205 л. с./150 кВт. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Тигр весит 7 тонн. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s На бронеавтомобилях стоят кондиционер, антиблокировочная система... {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Автоматический поддув колёс, возможна установка АКПП. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Единственный недостаток — невозможность плавать. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s А на этом наша лекция подошла к концу. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Спасибо за внимание. {Enter}
return

:?:/лек8::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 1500
SendInput, /s Здравия желаю{!} {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Сейчас я проведу лекцию на тему "Kia Optima". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Kia Optima — седан среднего класса южнокорейской автомобилестроительной компании Kia Motors... {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s производство которого было начато в 2000-м году. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Тип двигателя - R4. Мощность (кВт/л. с.) - 106/144. Рабочий объём (см³) - 1998. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s В базовой комплектации оснащался:  {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Подушкой безопасности для водителя, кондиционером, электростеклоподъемниками и ... {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Электроприводом боковых зеркал, ABS и противотуманными фарами. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s В качестве дополнения ставилась система контроля качества воздуха и кожаный салон, а также проигрывателем компакт-дисков. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Расход топлива: в городе - 10.7 л/100 км; {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s За городом - 7.4 л/100 км; {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Смешанный цикл - 9.4 л/100 км.  {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s А на этом наша лекция подошла к концу. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Спасибо за внимание. {Enter}
return

:?:/лек9::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 1500
SendInput, /s Здравия желаю{!} {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Сейчас я проведу лекцию на тему "УАЗ Патриот". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s УАЗ Патриот — полноприводный автомобиль повышенной проходимости (вседорожник) для эксплуатации на дорогах {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s всех категорий, а также по пересечённой местности. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Передние тормоза дисковые, с двумя цилиндрами, с плавающей скобой. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Задние тормоза барабанного типа, с одним цилиндром, с автоматическим регулированием зазора.  {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Передняя подвеска зависимая, пружинная со стабилизатором поперечной устойчивости. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Гидропневматическими амортизаторами телескопического типа двухстороннего действия. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Шины 225/75R16, 235/70R16, 245/70R16, 245/60R18. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Объём бака - 68 л. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Средний расход топлива на скорости 90 км/ч - 9,5 л/100 км. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s А на этом наша лекция подошла к концу. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Спасибо за внимание. {Enter}
return

:?:/лек10::
if (Ruk_Sost = 0) 
return
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 1500
SendInput, /s Здравия желаю{!} {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Сейчас я проведу лекцию на тему "УАЗ 2206 (Буханка)". {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s УАЗ 2206 (в просторечии — «Буханка») — семейство советских и российских полноприводных микроавтобусов. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Малотоннажный грузо-пассажирский автомобиль повышенной проходимости. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s В 1955 художник Владимир Арямов нарисовал эскиз фургона с огромной буквой «У» на передке. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Кстати, автомобиль Арямова не только не был похож ни на один зарубежный аналог.  {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s «Буханки» были не только полноприводными, но и заднеприводными. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s «Буханки» в больших количествах поступали, прежде всего, только в армию. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s «Буханка» полной массой около 3000 кг перевозил всего 500 кг груза со скоростью до 60 км/ч. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Объём бака - 77 л. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s А на этом наша лекция подошла к концу. {Enter}
SendInput, {F6}
sleep 1500
SendInput, /s Спасибо за внимание. {Enter}
return


:?:/патро1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ КВАДРАТ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ СОСТОЯНИЕ(1-3), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Въехали в квадрат, начинаем патрулирование. %Var1%. 131-0%Var2%B.
return

:?:/патро2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ НОМЕР КВАДРАТА, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ СОСТОЯНИЕ(1,2,3), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Продолжаем патрулирование. %Var1%. 131-0%Var2%B.
return

:?:/патро3::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ СОСТОЯНИЕ(1,2,3), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Закончили патрулирование пересеченной местности. 131-0%Var1%B.
return

:?:/патро4::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 148-77.
return

:?:/п1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ ТОЧКУ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 148-88 "%Var1%".
return


:?:/п2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ ТОЧКУ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ ГРУЗ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Прибыли к точке "%Var1%". 193-121 "%Var2%".
return

:?:/п3::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 193-131. Возвращаюсь на базу.
return

:?:/п4::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Прибыли на ВЧ. 193-141.
return

:?:/п5::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 167-11. Поставка окончена.
return

:?:/пмвд1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ ОРГУ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /d [%Var1%]: Ожидайте поставку боеприпасов.
return


:?:/пмвд2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 193-121.
return

:?:/пмвд3::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 193-131.
return

:?:/пмвд4::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ БУКВУ ГОРОДА, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 148-88 %Var1%.
return

:?:/пмвд5::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ ГОРОД, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Прибыли в г.%Var1%. 193-141.
return

:?:/пмвд6::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ ОРГУ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /d [%Var1%]: Разгрузку завершили. Возвращаемся на ВЧ.
return

:?:/пмвд7::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 167-11. Поставка окончена.
return

:?:/пмз1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ ОРГУ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /d [%Var1%]: Ожидайте поставку за медикаментами.
return

:?:/пмз2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ БУКВУ ГОРОДА, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 148-88 %Var1%.
return

:?:/пмз3::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ ГОРОД, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Прибыли в г.%Var1%. 193-121.
return

:?:/пмз4::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 193-131.
return

:?:/пмз5::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ ОРГУ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /d [%Var1%]: Медикаменты загрузили. Возвращаемся на ВЧ.
return

:?:/пмз6::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Прибыли на ВЧ. 193-141.
return

:?:/пмз7::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 167-11. Поставка окончена.
return

:?:/псг1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /d [РЖД]: Ожидайте поставку за специальным грузом.
return

:?:/псг2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 148-88 SS.
return

:?:/псг3::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Прибыли в г.Мирный. 193-121.
return

:?:/псг4::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 193-131.
return

:?:/псг5::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /d [РЖД]: Груз на борту. Возвращаемся на ВЧ.
return

:?:/псг6::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Прибыли на ВЧ. 193-141.
return

:?:/псг7::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 167-11. Поставка окончена.
return


:?:/пп1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 193-121.
return

:?:/пп2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 193-131.
return

:?:/пп3::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ БУКВУ ГОРОДА, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 148-88 %Var1%.
return

:?:/пп4::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ ГОРОД, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Прибыли в г.%Var1%. 193-141.
return

:?:/пп5::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] Разгрузку завершили. Возвращаемся на ВЧ.
return

:?:/пп6::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%] 167-11. Поставка окончена.
return


:?:/по1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: 148-11. Пост - "Охрана".{Enter}
return

:?:/по2::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: Заступил на постовой контроль. Пост - "Охрана".{Enter}
return

:?:/по3::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
SendInput, /ВВЕДИТЕ СОСТОЯНИЕ(1,2,3), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: Продолжаю стоять на постовом контроле. Пост - "Охрана". 131-0%Var1%А.{Enter}
return

:?:/по4::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ НАЗВАНИЕ ПОСТА, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ СОСТОЯНИЕ(1,2,3), ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: Сдал постовой контроль на точке "%Var1%". 131-0%Var2%А.{Enter}
return

:?:/по5::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 500
SendInput, /r [%job%]: 148-77.{Enter}
return


:?:/кар1::
SendMessage, 0x50,, 0x4190419,, A
if (Ruk_Sost = 0) 
return
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ ИД СЛУЖАЩЕГО, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var1, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 150
SendInput, /ВВЕДИТЕ ВРЕМЯ, ЗАТЕМ НАЖМИТЕ "ENTER" ->{Space}
Input, Var2, V, {Enter}
SendInput, {bs 17}
SendInput, {F6}
sleep 900
SendInput, /s Дежурный{!} {enter}
SendInput, {F6}
sleep 900
SendInput, /do Пришел дежурный и увел нарушителя в карцер. {enter}
SendInput, {F6}
sleep 900
SendInput, /setprison %Var1% %Var2% {space}
return

:?:/кар2::
SendMessage, 0x50,, 0x4190419,, A
if (Ruk_Sost = 0) 
return
SendInput, {F6}
sleep 900
SendInput, /r [%job%] Нарушитель был доставлен в карцер.   {enter}
return
