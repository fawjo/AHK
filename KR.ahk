#SingleInstance Force
#NoEnv
ver = 1.3
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
FileCreateDir, C:\Games\Files_for_AHK\
UrlDownloadToFile, https://raw.githubusercontent.com/fawjoAHK/AHK/main/version.ini, C:\Games\Files_for_AHK\version.ini
MsgBox, 68, АHK для отдела КР, Запускать следует от имени Администратора!                               Ты запустил верно?
IfMsgBox Yes
{
}
Else
{
ExitApp
}
IniRead, ver_ahk, C:\Games\Files_for_AHK\version.ini, VER, ver
If(ver_ahk != ver)
{
    Filedelete, %A_ScriptDir%\KR.ahk
    UrlDownloadToFile, https://github.com/fawjoAHK/AHK/blob/main/KR.ahk, %A_ScriptDir%\KR.ahk
    TrayTip , Обновление!, Вышло обновление скрипта. Было: %ver_ahk%, стало %ver%, 10, 1
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
Gui Font, s30 w600 cGreen, Georgia
Gui Add, Text,x190 y20 w600 h50 +0x200, Комендантская Рота
Gui Font, s14 w600 cGreen, Gerogia
Gui Add, Button, x50 y100 w300 h50 gYmo, Устав
Gui Add, Button, w300 h50 gRuk, Для руководителей
Gui Add, Button, w300 h50 gAhko, АХК (Основное)
Gui Add, Button, x400 y100 w300 h50 gKr, Комендантская Рота
Gui Add, Button, w300 h50 gInvite, Отдел кадров
Gui Add, Button, w300 h50 gAhkn, АХК (Наряды)
Gui Add, Button, x230 y330 w300 h50 gControls, Настройки
Gui, Show, h400 w750, АХК для служащих Комендансткой Роты
return
ymo:
Sleep 50
Run, https://forum.gtaprovince.ru/topic/502258-federalnyy-zakon-o-voinskoy-obyazannosti-i-voennoy-sluzhbe/
return
kr:
Sleep 50
Run, https://forum.gtaprovince.ru/topic/585798-komendantskaya-rota-kr/
return
ruk:
IniRead, zvan, C:\Games\Files_for_AHK\info.egl, USER, zvan
IniRead, job, C:\Games\Files_for_AHK\info.egl, USER, job
IniRead, name, C:\Games\Files_for_AHK\info.egl, USER, name
IniRead, surname, C:\Games\Files_for_AHK\info.egl, USER, surname
IniRead, inc, C:\Games\Files_for_AHK\info.egl, USER, inc
Gui, Destroy
Gui, 3:Font, s35 w600 cGreen, Georgia
Gui, 3:add, text, x200 y20 w900 h100 cGreen, Команды руководящему составу
Gui, 3:Font, S10 C000000, Georgia
Gui, 3:Font, S12 CDefault Bold, Georgia
Gui, 3:Add, Text, x10 y120 w50 h20 , alt+1
Gui, 3:Add, Text, x10 y150 w50 h20 , alt+2
Gui, 3:Add, Text, x10 y180 w50 h20 , alt+3
Gui, 3:Add, Text, x10 y210 w50 h20 , alt+4
Gui, 3:Add, Text, x10 y240 w50 h20 , alt+5
Gui, 3:Add, Text, x10 y270 w50 h20 , alt+6
Gui, 3:Add, Text, x10 y300 w50 h20 , alt+7
Gui, 3:Add, Text, x10 y330 w50 h20 , alt+8
Gui, 3:Add, Text, x10 y360 w50 h20 , alt+9
Gui, 3:Add, Text, x10 y390 w50 h20 , ctrl+9
Gui, 3:Add, Text, x75 y120 w25 h20 , -
Gui, 3:Add, Text, x75 y150 w25 h20 , -
Gui, 3:Add, Text, x75 y180 w25 h20 , -
Gui, 3:Add, Text, x75 y210 w25 h20 , -
Gui, 3:Add, Text, x75 y240 w25 h20 , -
Gui, 3:Add, Text, x75 y270 w25 h20 , -
Gui, 3:Add, Text, x75 y300 w25 h20 , -
Gui, 3:Add, Text, x75 y330 w25 h20 , -
Gui, 3:Add, Text, x75 y360 w25 h20 , -
Gui, 3:Add, Text, x75 y390 w25 h20 , -
Gui, 3:Add, Text, x100 y120 w280 h20 , Нашивка.
Gui, 3:Add, Text, x100 y150 w280 h20 , Воинское приветствие.
Gui, 3:Add, Text, x100 y180 w280 h20 , Запрос на документы.
Gui, 3:Add, Text, x100 y210 w280 h20 , Цель визита?
Gui, 3:Add, Text, x100 y240 w280 h20 , Всего доброго.
Gui, 3:Add, Text, x100 y270 w280 h20 , Покиньте ВЧ.
Gui, 3:Add, Text, x100 y300 w280 h20 , Последнее предупреждение.
Gui, 3:Add, Text, x100 y330 w280 h20 , Стоять! Стрелять буду!
Gui, 3:Add, Text, x100 y360 w280 h20 , Поставка в руки.
Gui, 3:Add, Text, x100 y390 w280 h20 , Поставка в кузов.
Gui, 3:Font, S12 CDefault Bold, Verdana
Gui, 3:Add, Text, x400 y120 w105 h20 , alt+T
Gui, 3:Add, Text, x400 y150 w105 h20 , ctrl+T
Gui, 3:Add, Text, x400 y180 w105 h20 , alt+Y
Gui, 3:Add, Text, x400 y210 w105 h20 , ctrl+Y
Gui, 3:Add, Text, x400 y240 w105 h20 , alt+End
Gui, 3:Add, Text, x400 y270 w105 h20 , alt+Home
Gui, 3:Add, Text, x400 y300 w105 h20 , alt+Q
Gui, 3:Add, Text, x400 y330 w105 h20 , alt+E
Gui, 3:Add, Text, x400 y360 w105 h20 , alt+0
Gui, 3:Add, Text, x400 y390 w105 h20 , ctrl+0
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
Gui, 3:Add, Text, x540 y120 w200 h20 , r чат ( с тегом).
Gui, 3:Add, Text, x540 y150 w200 h20 , Нападение на ВЧ.
Gui, 3:Add, Text, x540 y180 w200 h20 , rb чат.
Gui, 3:Add, Text, x540 y210 w200 h20 , Откат рации.
Gui, 3:Add, Text, x540 y240 w210 h20 , База (find).
Gui, 3:Add, Text, x540 y270 w200 h20 , Часы.
Gui, 3:Add, Text, x540 y300 w200 h20 , Рация ОN.
Gui, 3:Add, Text, x540 y330 w200 h20 , Рация OFF.
Gui, 3:Add, Text, x540 y360 w200 h20 , Поставка из кузова.
Gui, 3:Add, Text, x540 y390 w200 h20 , Поставка на землю.
Gui, 3:Add, Text, x770 y120 w105 h20 , /кпп1
Gui, 3:Add, Text, x770 y150 w105 h20 , /кпп2
Gui, 3:Add, Text, x770 y180 w105 h20 , /кпп3
Gui, 3:Add, Text, x770 y210 w105 h20 , /пат1
Gui, 3:Add, Text, x770 y240 w105 h20 , /пат2
Gui, 3:Add, Text, x770 y270 w105 h20 , /пат3
Gui, 3:Add, Text, x770 y300 w105 h20 , /выш1
Gui, 3:Add, Text, x770 y330 w105 h20 , /выш2
Gui, 3:Add, Text, x770 y360 w105 h20 , /выш3
Gui, 3:Add, Text, x770 y390 w105 h20 , /сдал
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
Gui, 3:Add, Text, x875 y120 w180 h20 , КПП заступил.
Gui, 3:Add, Text, x875 y150 w180 h20 , КПП состояние.
Gui, 3:Add, Text, x875 y180 w180 h20 , КПП сдал пост.
Gui, 3:Add, Text, x875 y210 w180 h20 , Патруль заступил.
Gui, 3:Add, Text, x875 y240 w180 h20 , Патруль состояние.
Gui, 3:Add, Text, x875 y270 w180 h20 , Патруль сдал пост.
Gui, 3:Add, Text, x875 y300 w180 h20 , Вышка заступил.
Gui, 3:Add, Text, x875 y330 w180 h20 , Вышка состояние.
Gui, 3:Add, Text, x875 y360 w180 h20 , Вышка сдал пост.
Gui, 3:Add, Text, x875 y390 w180 h20 , Амуницию сдал.
Gui Font, s14 w600 cGreen, Gerogia
Gui, 3:Add, Button, x380 y430 w300 h50 gMain, Главная
Gui 3:Font
gui 3:Show, w1080 h500, Комендантская Рота
return
invite:
Sleep 50
Run, https://forum.gtaprovince.ru/topic/559741-otdel-kadrov/
return
ahkn:
IniRead, zvan, C:\Games\Files_for_AHK\info.egl, USER, zvan
IniRead, job, C:\Games\Files_for_AHK\info.egl, USER, job
IniRead, name, C:\Games\Files_for_AHK\info.egl, USER, name
IniRead, surname, C:\Games\Files_for_AHK\info.egl, USER, surname
IniRead, inc, C:\Games\Files_for_AHK\info.egl, USER, inc
Gui, Destroy
Gui, 3:Font, s35 w600 cGreen, Georgia
Gui, 3:add, text, x270 y20 w900 h100 cGreen, Команды для нарядов
Gui, 3:Font, S10 C000000, Georgia
Gui, 3:Font, S12 CDefault Bold, Georgia
Gui, 3:Add, Text, x10 y120 w50 h20 , alt+1
Gui, 3:Add, Text, x10 y150 w50 h20 , alt+2
Gui, 3:Add, Text, x10 y180 w50 h20 , alt+3
Gui, 3:Add, Text, x10 y210 w50 h20 , alt+4
Gui, 3:Add, Text, x10 y240 w50 h20 , alt+5
Gui, 3:Add, Text, x10 y270 w50 h20 , alt+6
Gui, 3:Add, Text, x10 y300 w50 h20 , alt+7
Gui, 3:Add, Text, x10 y330 w50 h20 , alt+8
Gui, 3:Add, Text, x10 y360 w50 h20 , alt+9
Gui, 3:Add, Text, x10 y390 w50 h20 , ctrl+9
Gui, 3:Add, Text, x75 y120 w25 h20 , -
Gui, 3:Add, Text, x75 y150 w25 h20 , -
Gui, 3:Add, Text, x75 y180 w25 h20 , -
Gui, 3:Add, Text, x75 y210 w25 h20 , -
Gui, 3:Add, Text, x75 y240 w25 h20 , -
Gui, 3:Add, Text, x75 y270 w25 h20 , -
Gui, 3:Add, Text, x75 y300 w25 h20 , -
Gui, 3:Add, Text, x75 y330 w25 h20 , -
Gui, 3:Add, Text, x75 y360 w25 h20 , -
Gui, 3:Add, Text, x75 y390 w25 h20 , -
Gui, 3:Add, Text, x100 y120 w280 h20 , Нашивка.
Gui, 3:Add, Text, x100 y150 w280 h20 , Воинское приветствие.
Gui, 3:Add, Text, x100 y180 w280 h20 , Запрос на документы.
Gui, 3:Add, Text, x100 y210 w280 h20 , Цель визита?
Gui, 3:Add, Text, x100 y240 w280 h20 , Всего доброго.
Gui, 3:Add, Text, x100 y270 w280 h20 , Покиньте ВЧ.
Gui, 3:Add, Text, x100 y300 w280 h20 , Последнее предупреждение.
Gui, 3:Add, Text, x100 y330 w280 h20 , Стоять! Стрелять буду!
Gui, 3:Add, Text, x100 y360 w280 h20 , Поставка в руки.
Gui, 3:Add, Text, x100 y390 w280 h20 , Поставка в кузов.
Gui, 3:Font, S12 CDefault Bold, Verdana
Gui, 3:Add, Text, x400 y120 w105 h20 , alt+T
Gui, 3:Add, Text, x400 y150 w105 h20 , ctrl+T
Gui, 3:Add, Text, x400 y180 w105 h20 , alt+Y
Gui, 3:Add, Text, x400 y210 w105 h20 , ctrl+Y
Gui, 3:Add, Text, x400 y240 w105 h20 , alt+End
Gui, 3:Add, Text, x400 y270 w105 h20 , alt+Home
Gui, 3:Add, Text, x400 y300 w105 h20 , alt+Q
Gui, 3:Add, Text, x400 y330 w105 h20 , alt+E
Gui, 3:Add, Text, x400 y360 w105 h20 , alt+0
Gui, 3:Add, Text, x400 y390 w105 h20 , ctrl+0
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
Gui, 3:Add, Text, x540 y120 w200 h20 , r чат ( с тегом).
Gui, 3:Add, Text, x540 y150 w200 h20 , Нападение на ВЧ.
Gui, 3:Add, Text, x540 y180 w200 h20 , rb чат.
Gui, 3:Add, Text, x540 y210 w200 h20 , Откат рации.
Gui, 3:Add, Text, x540 y240 w210 h20 , База (find).
Gui, 3:Add, Text, x540 y270 w200 h20 , Часы.
Gui, 3:Add, Text, x540 y300 w200 h20 , Рация ОN.
Gui, 3:Add, Text, x540 y330 w200 h20 , Рация OFF.
Gui, 3:Add, Text, x540 y360 w200 h20 , Поставка из кузова.
Gui, 3:Add, Text, x540 y390 w200 h20 , Поставка на землю.
Gui, 3:Add, Text, x770 y120 w105 h20 , /кпп1
Gui, 3:Add, Text, x770 y150 w105 h20 , /кпп2
Gui, 3:Add, Text, x770 y180 w105 h20 , /кпп3
Gui, 3:Add, Text, x770 y210 w105 h20 , /пат1
Gui, 3:Add, Text, x770 y240 w105 h20 , /пат2
Gui, 3:Add, Text, x770 y270 w105 h20 , /пат3
Gui, 3:Add, Text, x770 y300 w105 h20 , /выш1
Gui, 3:Add, Text, x770 y330 w105 h20 , /выш2
Gui, 3:Add, Text, x770 y360 w105 h20 , /выш3
Gui, 3:Add, Text, x770 y390 w105 h20 , /сдал
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
Gui, 3:Add, Text, x875 y120 w180 h20 , КПП заступил.
Gui, 3:Add, Text, x875 y150 w180 h20 , КПП состояние.
Gui, 3:Add, Text, x875 y180 w180 h20 , КПП сдал пост.
Gui, 3:Add, Text, x875 y210 w180 h20 , Патруль заступил.
Gui, 3:Add, Text, x875 y240 w180 h20 , Патруль состояние.
Gui, 3:Add, Text, x875 y270 w180 h20 , Патруль сдал пост.
Gui, 3:Add, Text, x875 y300 w180 h20 , Вышка заступил.
Gui, 3:Add, Text, x875 y330 w180 h20 , Вышка состояние.
Gui, 3:Add, Text, x875 y360 w180 h20 , Вышка сдал пост.
Gui, 3:Add, Text, x875 y390 w180 h20 , Амуницию сдал.
Gui Font, s14 w600 cGreen, Gerogia
Gui, 3:Add, Button, x380 y430 w300 h50 gMain, Главная
Gui 3:Font
gui 3:Show, w1080 h500, Комендантская Рота
return
controls:
Gui, 2:Destroy
Gui Font
Gui 2:Font, s23 w800 cGreen, Georgia
Gui 2:Add, Text, x100 y10 w999 h36 +0x200, Настройки
IniRead, zvan, C:\Games\Files_for_AHK\info.egl, USER, zvan
IniRead, job, C:\Games\Files_for_AHK\info.egl, USER, job
IniRead, name, C:\Games\Files_for_AHK\info.egl, USER, name
IniRead, surname, C:\Games\Files_for_AHK\info.egl, USER, surname
IniRead, inc, C:\Games\Files_for_AHK\info.egl, USER, inc
Gui 2:Font
Gui 2:Font, s14 w800, Georgia
Gui, 2:Add, Text, x50 y60 w205 h23 +0x200, Выберете звание:
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
Gui, 3:Font, s35 w600 cGreen, Georgia
Gui, 3:add, text, x300 y20 w900 h100 cGreen, Комендантская Рота
Gui, 3:Font, S10 C000000, Georgia
Gui, 3:Font, S12 CDefault Bold, Georgia
Gui, 3:Add, Text, x10 y120 w50 h20 , alt+1
Gui, 3:Add, Text, x10 y150 w50 h20 , alt+2
Gui, 3:Add, Text, x10 y180 w50 h20 , alt+3
Gui, 3:Add, Text, x10 y210 w50 h20 , alt+4
Gui, 3:Add, Text, x10 y240 w50 h20 , alt+5
Gui, 3:Add, Text, x10 y270 w50 h20 , alt+6
Gui, 3:Add, Text, x10 y300 w50 h20 , alt+7
Gui, 3:Add, Text, x10 y330 w50 h20 , alt+8
Gui, 3:Add, Text, x10 y360 w50 h20 , alt+9
Gui, 3:Add, Text, x10 y390 w50 h20 , ctrl+9
Gui, 3:Add, Text, x75 y120 w25 h20 , -
Gui, 3:Add, Text, x75 y150 w25 h20 , -
Gui, 3:Add, Text, x75 y180 w25 h20 , -
Gui, 3:Add, Text, x75 y210 w25 h20 , -
Gui, 3:Add, Text, x75 y240 w25 h20 , -
Gui, 3:Add, Text, x75 y270 w25 h20 , -
Gui, 3:Add, Text, x75 y300 w25 h20 , -
Gui, 3:Add, Text, x75 y330 w25 h20 , -
Gui, 3:Add, Text, x75 y360 w25 h20 , -
Gui, 3:Add, Text, x75 y390 w25 h20 , -
Gui, 3:Add, Text, x100 y120 w280 h20 , Нашивка.
Gui, 3:Add, Text, x100 y150 w280 h20 , Воинское приветствие.
Gui, 3:Add, Text, x100 y180 w280 h20 , Запрос на документы.
Gui, 3:Add, Text, x100 y210 w280 h20 , Цель визита?
Gui, 3:Add, Text, x100 y240 w280 h20 , Покиньте ВЧ.
Gui, 3:Add, Text, x100 y270 w280 h20 , Последнее предупреждение.
Gui, 3:Add, Text, x100 y300 w280 h20 , Стоять! Стрелять буду!
Gui, 3:Add, Text, x100 y330 w280 h20 , 
Gui, 3:Add, Text, x100 y360 w280 h20 , Поставка в руки.
Gui, 3:Add, Text, x100 y390 w280 h20 , Поставка в кузов.
Gui, 3:Font, S12 CDefault Bold, Verdana
Gui, 3:Add, Text, x400 y120 w105 h20 , alt+T
Gui, 3:Add, Text, x400 y150 w105 h20 , ctrl+T
Gui, 3:Add, Text, x400 y180 w105 h20 , alt+Y
Gui, 3:Add, Text, x400 y210 w105 h20 , ctrl+Y
Gui, 3:Add, Text, x400 y240 w105 h20 , alt+End
Gui, 3:Add, Text, x400 y270 w105 h20 , alt+Home
Gui, 3:Add, Text, x400 y300 w105 h20 , alt+Q
Gui, 3:Add, Text, x400 y330 w105 h20 , alt+E
Gui, 3:Add, Text, x400 y360 w105 h20 , alt+0
Gui, 3:Add, Text, x400 y390 w105 h20 , ctrl+0
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
Gui, 3:Add, Text, x540 y120 w200 h20 , r чат (с тегом).
Gui, 3:Add, Text, x540 y150 w200 h20 , 
Gui, 3:Add, Text, x540 y180 w200 h20 , rb чат.
Gui, 3:Add, Text, x540 y210 w200 h20 , Откат рации.
Gui, 3:Add, Text, x540 y240 w210 h20 , База (find).
Gui, 3:Add, Text, x540 y270 w200 h20 , Часы.
Gui, 3:Add, Text, x540 y300 w200 h20 , 
Gui, 3:Add, Text, x540 y330 w200 h20 , 
Gui, 3:Add, Text, x540 y360 w200 h20 , Поставка из кузова.
Gui, 3:Add, Text, x540 y390 w200 h20 , Поставка на землю.
Gui, 3:Add, Text, x770 y120 w105 h20 , /уд
Gui, 3:Add, Text, x770 y150 w105 h20 , /кпп2
Gui, 3:Add, Text, x770 y180 w105 h20 , /кпп3
Gui, 3:Add, Text, x770 y210 w105 h20 , /пат1
Gui, 3:Add, Text, x770 y240 w105 h20 , /пат2
Gui, 3:Add, Text, x770 y270 w105 h20 , /пат3
Gui, 3:Add, Text, x770 y300 w105 h20 , /выш1
Gui, 3:Add, Text, x770 y330 w105 h20 , /выш2
Gui, 3:Add, Text, x770 y360 w105 h20 , /выш3
Gui, 3:Add, Text, x770 y390 w105 h20 , /сдал
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
Gui, 3:Add, Text, x875 y120 w180 h20 , Удостоверение
Gui, 3:Add, Text, x875 y150 w180 h20 , 
Gui, 3:Add, Text, x875 y180 w180 h20 , 
Gui, 3:Add, Text, x875 y210 w180 h20 , 
Gui, 3:Add, Text, x875 y240 w180 h20 , 
Gui, 3:Add, Text, x875 y270 w180 h20 , 
Gui, 3:Add, Text, x875 y300 w180 h20 , 
Gui, 3:Add, Text, x875 y330 w180 h20 , 
Gui, 3:Add, Text, x875 y360 w180 h20 , 
Gui, 3:Add, Text, x875 y390 w180 h20 , 
Gui Font, s14 w600 cGreen, Gerogia
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

return
!9::

return
^9::

return
!0::

return
^0::

return
!Q::

return
!E::

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
!B::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /b {space}
return
^T::

return
!Y::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
sleep 100
SendInput, /rb {space}
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
sleep 500
SendInput, /do Удостоверение в кармане. {enter}
SendInput, {F6}
sleep 500
SendInput, /me достав удостоверение из кармана, предъявил его человеку напротив {enter}
SendInput, {F6}
sleep 500
SendInput, /ud %Var1% {enter}
sleep 500
SendInput, /say Ознакомились?{enter}
SendInput, {F6}
sleep 500
SendInput, /me закрыв удостоверение, убрал его в карман {enter}
sleep 500
SendInput, /do Удостоверение в кармане. {enter}
return
