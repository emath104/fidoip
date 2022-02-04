<html>
<head>
<title>Binkd FAQ by 2:5080/102@FIDOnet</title>
   <META NAME="author" CONTENT="Grumbler (Stas Degteff 2:5080/102@fidonet=7:1500/102)">
   <META NAME="description" CONTENT="Binkd FAQ (russian)">
   <META NAME="resource-type" CONTENT="document">
   <META NAME="distribution" CONTENT="Global">
</head>
<body background="/img/textures/clot.jpg">

<h2 align=center>        BinkD FAQ</h2>

<h2 align=center>        Ответы на часто задаваемые вопросы по FTN-мэйлеру binkd</h2>
<h2 align=center>        $Date: 2010/12/05 16:22:34 $</h2>

<br><dir><h3>    Этот FAQ составлен на основе вопросов, часто встречающихся</h3></dir>
в эхоконференции RU.BINKD. Часть ответов основана на рекомендациях
разработчиков.
Со всеми предложениями и замечаниями пишите: Stas Degteff 2:5080/102

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;01. Где взять последнюю копию BinkD стабильной версии или беты.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;02. Что такое binkd
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;03. Протокол binkp
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;04. Что такое и зачем нужен домен fidonet.net
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;05. binkd не соединяется. Что делать?
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;06. Как подружить binkd и HTTP-прокси.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;07. Как подружить binkd и SOCKS-прокси.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;08. IP-пойнт: как заставить binkd забрать почту с босса (аплинка).
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;09. Ошибка "start_file_transfer: .: Permission denied".
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10. binkd и диалап: автоматический дозвон и отсоединение.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;11. Изменил конфиг при работющем binkd. Когда подействуют изменения?
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;12. Как подружить binkd c T-mail/IP?
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;13. Где взять лог анализер для Binkd?
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;14. Binkd долго коннектится, хотя сетка скоростная.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15. Почему BinkD не понимает передаваемые параметры при запуске из inetd
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;16. Можно ли сделать FREQ в binkd.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;17. Как добавить binkd в фидо-станцию, работающую на модеме.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18. Флаги по приему файла не создаются, программы не запускаются.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;19. Не работает skipmask.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;20. Binkd под DOS.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;21. Binkd под Windows 3.x.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;22. Разные FTN-домены в binkd.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;23. Как работает "domain ... alias-for ..." в конфиге
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;24. Что означает диагностика "send: TCP/IP error (-10000)", как это лечить?
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;25. Argus (Radius) и binkd: ошибка Argus "Aborting due to carrier loss"
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;26. В названии аутбаунда - символ комментария и binkd не видит каталог.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;27. Есть ли возможность запуска приложения в binkd по событию?
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;28. В чем различие между binkd/w32 и binkd/w9x?
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;29. Сильно не хватает чата в binkd! И время синхронизировать хочется.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30. Binkd принимает входящее соединение только после исходящего.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;31. Ошибка "start_file_transfer: ECHO is off.: No such file or directory".
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;32. Как правильно создать полл.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;33. Что означают цифpы в квадpатных скобках в логе?
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;34. Как настроить эхотаг для отправки исходящего нетмейла?
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;35. Зачем нужна директива share в конфиге (shared aka)?
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;36. Зачем нужна директива ftrans в конфиге?
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;37. binkd в Windows XP работает сервисом только от администратора. Почему?
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A1. Обнаружил баг в binkd!
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A2. Как связаться с разработчиками.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A3. Хочу сразу узнавать об изменениях в binkd!
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A4. А когда binkd будет делать ... ?

<hr>

<br><dir><h3>    01. Где взять последнюю копию BinkD стабильной версии или беты.</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В файл-эхе AFTNBINKD.

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Кроме того, в Internet'е:
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Релизы, документация, анализаторы логов и пр. (Pavel Gulchouck 2:463/68):
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ftp://cvs.happy.kiev.ua/pub/fidosoft/mailer/binkd/
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Зеркала
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ftp://cheetah.itpark.com.ua/pub/fido/binkd/
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  (Украина, Pavel Gulchouck 2:463/68)
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://binkd.spb.ru/cvs.happy.kiev.ua/pub/fidosoft/mailer/binkd/
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  (Россия, Andrey Ostanovsky 2:5030/1957)

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Бэты:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Публичный CVS
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   :pserver:binkd@cvs.happy.kiev.ua:/cvs , модуль binkd, пароль пустой

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Примеры команд.
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Залогиниться на сервер cvs:
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   cvs -d :pserver:binkd@cvs.happy.kiev.ua:/cvs login
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Получить последние исходники ветки current (на настоящий момент это 1.0):
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   cvs -d :pserver:binkd@cvs.happy.kiev.ua:/cvs co binkd
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Получить последние исходники ветки binkd 0.9.x-stable:
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   cvs -d :pserver:binkd@cvs.happy.kiev.ua:/cvs co -r binkd-0_9-stable binkd
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Получить исходники binkd 0.9.10-release:
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   cvs -d :pserver:binkd@cvs.happy.kiev.ua:/cvs co -r binkd-0_9_10 binkd

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Анонимный FTP:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ftp://cvs.happy.kiev.ua/pub/fidosoft/mailer/binkd/snapshot (основной)
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ftp://ftp.grumbler.org/pub/binkd/current (зеркало, обновляется 23:50 UTC+5)

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Binkd, портированный под Windows CE:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://nicka-s.narod.ru/fido/index.html
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  (Россия, Nickita Startcev 2:469/105.96 & 2:5030/777.319)

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Binkd для DOS-DPMI с использованием стека (драйверов IP) Watt-32 авторства
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gisle Vanem giva@bgnett.no (http://www.bgnett.no/~giva/):
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://mik.mkw.ru/dos-stuff/binkd.zip
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  (Россия, Michael Kostylev 2:5030/1530 mik@niipt.ru)

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Binkd/2 1.0a (current, EMX), скомпилированный еженощно:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FREQ c узла 2:221/1, алиас файла: binkd2e. Можно скачать также с BBS узла
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2:221/1 (доступна по telnet:rbb.cjb.net)
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://rbb.homeip.net/pub/os2/comm/bbs/binkd2e.rar
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  (Финляндия, Tommi Koivula 2:221/1 & 2:221/360 & 2:221/361)

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Документация (англ.), анализаторы логов и пр.:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://www.doe.carleton.ca/~nsoveiko/fido/binkd/

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Man page, описание binkp, бинарники и пр. (Stas Degteff 2:5080/102):
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://binkd.grumbler.org/

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Этот FAQ:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://binkd.grumbler.org/binkdfaq.shtml (или .txt)

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В официальных источниках бинарники binkd именуются так, чтобы показать
</h3>OS, компилятор и способ сборки.

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Версии для Windows (32bit):
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd.exe, binkdw32.exe - binkd/w32, консольный, скомпилирован MS Visual C
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd-dll.exe   - binkd/w32, консольный, MS Visual C, требует msvcrt.dll
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd-mingw.exe - binkd/w32, консольный, MinGW32, требует msvcrt.dll
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd9x.exe     - binkd/w9x, безоконный, скомпилирован MS Visual C
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd9x-dll.exe - binkd/w9x, безоконный, MS Visual C, требует msvcrt.dll
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd9x-mingw.exe - binkd/w9x, безоконный, MinGW32, требует msvcrt.dll

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Версии для OS/2:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd2.exe   - компилятор Watcom C, перла нет
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd2e.exe  - emx, умеет подгружать перловую dll и работать без нее
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd2pl.exe - emx, perl слинкован статически (т.е. перловая dll не нужна)
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd2eo.exe - emx/omf (multithread), перла нет.


<hr>


<br><dir><h3>    02. Что такое binkd</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Бинкд - фидошный мэйлер, работающий через интернет по протоколу binkp
(FSP-1018 и др.). Этот протокол поддерживается также мэйлерами Аргус (win32;
RitLabs; http://www.ritlabs.com) и его клонами Radius и Taurus, BForce (unix),
программой Internet Rex (DOS/W32/OS2) и BeeMail (win32; Stephen Proffitt,
1:105/10; http://beemail.gexonline.net/)

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Характеристики:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- freeware, открытые исходники;
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- версии для Unix (linux, freebsd, SCO, ...), OS/2 (native & EMX),
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Windows NT/2000/XP и Windows 95/98/Me, Windows 3.x, DOS;
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- возможность работы демоном под Unix и сервисом Windows NT/2000/XP,
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  отдельная версия для работы сервисом в Windows 9x;
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- простое TCP-соединение (целостность данных отслеживается на уровне TCP);
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- BSO (bink-style outbound);
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- LBSO (Long BSO);
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- ASO (Amiga-style outbound);
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- трансляция путей в ?LO файлах (используется при размещении аутбаунда
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  на сетевых дисках);
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- персональные файлбоксы для отправляемых и принимаемых файлов для каждого
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  узла;
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- поддержка файлбоксов T-mail и The Brake!;
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- поддержка трансляции FTN-адресов в доменное имя (*.fidonet.net);
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- поддержка файла паролей стиля T-mail - начиная с 0.9.4 и ifcico - c 1.0;
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- поддержка FREQ с использованием SRIF;
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- создание флагов по приему файла (по маске);
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- запуск программ по приему файла (по маске);
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- отказ от приема файла (по маске) - начиная с 0.9.4;
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- работа через HTTP или SOCKS прокси-сервер (начиная с версии 0.9.3.https);
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- шифрование паролей (MD5) - начиная с релиза 0.9.4;
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- шифрование трафика - начиная с 0.9.5;
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- проверка IP-адреса удаленного узла при входящих соединениях -
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  начиная с 0.9.5.


<hr>


<br><dir><h3>    03. Протокол binkp</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Расшифровка названия: binkd protocol. Описан в FSP-1018 (FIDOnet standard
proposal - предложенный для обсуждения/рассмотрения FTSC стандарт) и
порт 24554 выделен для binkp в RFC-1700 (request for comments,
выпускаемый IANA).
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Использующий двустороннее TCP-соединение протокол обмена файлами,
разработанный для FTN-мэйлера binkd. По умолчанию использует порт 24554.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Существуют две версии протокола: 1.0 и 1.1, обратно совместимы.
Основное отличие версии 1.1 в возможности делать FREQ во время сессии. Кроме
того, binkp 1.1 в настоящее время имеет опции NR (non-reliable mode,
режим работы с ненадежнвм каналом связи) и ND (no dupes mode, режим защиты
от повторной передачи файлов), MD5 (хеширование паролей), CRYPT (шифрование
трафика).
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Версия протокола 1.1 поддерживается мэйлером binkd, версия 1.0 реализована
в мэйлере Argus и его клонах (в нем binkp реализован с добавлением собственного
механизма обработки FREQ и другими изменениями), в MBSE, Internet Rex, BForce
и других. В пакете Internet Rex (2.24 и более поздние) реализован также свой
(несовместимый) вариант binkp/1.1.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Описание протокола на русском языке лежит тут:
http://binkd.grumbler.org/binkp/


<hr>


<br><dir><h3>    04. Что такое и зачем нужен домен fidonet.net</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fidonet.net - домен, зарегистрированный для системы трансляции FTN-адресов
в доменные имена internet. Используется преимущественно при binkp-соединениях.
Адрес 1:2/3 преобразуется в домен f3.n2.z1.fidonet.net (для пойнта: 1:2/3.4
преобразуется в p4.f3.n2.z1.fidonet.net), затем binkd (или другой binkp-мэйлер)
получает средствами операционной системы IP-адрес узла. Если домен существует
- можно пытаться установить соединение.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Исходя из этого была составлена "полиси домена fidonet.net": доменное имя
в зоне fidonet.net выдается узлам, присутствующим в нодлисте, имеющим
постоянный IP-адрес или доменное имя и круглосуточно отвечающим на порту 24554
по протоколу binkp.


<hr>


<br><dir><h3>    05. binkd не соединяется, сообщает про таймаут (timeout). Что делать?</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. Проверьте, отвечает ли удаленный узел на порту 24554 (команда telnet).
Если соединение не устанавливается, проверьте, подключен ли этот компьютер
в данный момент к сети (команда ping). Если проверки успешные - проверяйте
настройки (при этом помогает увеличение уровня протоколирования: loglevel 6
или больше).


<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Вот примеры для узла 2:5080/68:
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.1.
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(В ответе на телнет управляющие символы убраны, разбиение на строки
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;выполнено для удобства)

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;m:\>telnet f68.n5080.z2.fidonet.net 24554
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-.OPT CRAM-MD5-593e3e5411515fc1cf75816bb74e41d0-SYS Academ
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-ZYZ Alexei Kuklin-LOC Ekaterinburg, Russia-NDL 115200,TCP,BINKP,HUB
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-%TIME Tue, 20 Feb 2001 15:25:20 +0500- VER binkd/0.9.4/Win32 binkp/1.1
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 2:5080/68@fidonet-OPT ND

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M:\>ping f68.n5080.z2.fidonet.net
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pinging fido68.imp.uran.ru [195.19.130.68] with 32 bytes of data:
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Reply from 195.19.130.68: bytes=32 time=505ms TTL=122
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Reply from 195.19.130.68: bytes=32 time=555ms TTL=122
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Reply from 195.19.130.68: bytes=32 time=406ms TTL=122
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Reply from 195.19.130.68: bytes=32 time=372ms TTL=122

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Узел работает. Проверьте настройки своего Binkd. Возможно, задан слишком
</h3>маленький таймаут (время, необходимое для установки соединения, можно оценить
по задержке перед ответом в telnet).

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Другой вариант: телнет соединяется, а пинг - нет (сообщает "Request timed
</h3>out" или "Превышен интервал ожидания"):

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M:\>ping f68.n5080.z2.fidonet.net
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pinging fido68.imp.uran.ru [195.19.130.68] with 32 bytes of data:
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Request timed out.
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Request timed out.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Request timed out.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Request timed out.

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Это означает, что ICMP-пакеты запрещены на пути между вами. На работу
</h3>binkd они не влияют.



<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.2.
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M:\>ping f68.n5080.z2.fidonet.net
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Unknown host f68.n5080.z2.fidonet.net
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Такой ответ означает, что ваш компьютер не смог обнаружить запись в DNS
</h3>для этого узла. Проверьте настройки DNS в системе. Если они верны -  убедитесь,
что DNS-сервер работает и адрес удаленного узла указан правильно.



<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.3.
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Если пинг проходит, а telnet-соединение не устанавливается - возможно,
</h3>что binkd на этом узле в данный момент не отвечает. Попробуйте
выяснить с сисопом узла, запущен ли у него binkd. Если запущен и соединяется
с другими узлами - это означает, что доступ к порту 24554 закрыт на файрволле
Вашей сети. Попробуйте запустить binkd через прокси-сервер - см. "Как
подружить binkd и HTTP-прокси", "Как подружить binkd и SOCKS-прокси"


<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.4.
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M:\>ping -w 5000 f68.n5080.z2.fidonet.net
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pinging fido68.imp.uran.ru [195.19.130.68] with 32 bytes of data:
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Reply from 195.19.130.68: bytes=32 time=3674ms TTL=122
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Request timed out.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Reply from 195.19.130.68: bytes=32 time=4232ms TTL=122
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Request timed out.

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Телнет на порт 24554 иногда соединяется, а чаще - нет.
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Узел работает, но канал связи между вами сильно загружен или слишком
</h3>медленный. При этом binkd соединяется не при каждой попытке (теряются
IP-пакеты) или не соединяется вовсе (слишком мало время ожидания ответа
удаленного узла). Первый случай "неизлечим", поскольку пакеты теряются
в пути и повлиять на это Вы не в состоянии. Во втором случае нужно увеличить
значение времени ожиданий в файле конфигурации binkd (значения задаются
в секундах):

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;timeout 60
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;connect-timeout 300
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;call-delay 60

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Если увеличение этих значений не помогает - смените аплинка.
</h3>

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.5.
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Телнет на порт 24554 не соединяется, хост на пинг не отвечает.

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Узел не отвечает. Вероятные варианты :
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 - в данный момент ваш компьютер либо удаленный узел не подключен
к интернет или нарушена маршрутизация (обрыв на линии связи, отключение
электропитания, проводятся работы у одного из провайдеров и пр.) -
предпримите несколько попыток позже;
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 - Ваш компьютер находится в Intranet и выход в Internet возможен только
через прокси-сервер - см. "Как подружить binkd и HTTP-прокси", "Как подружить
binkd и SOCKS-прокси"


<hr>


<br><dir><h3>    06. Как подружить binkd и HTTP-прокси.</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Нередко в ЛВС организации пользователи выходят в Internet исключитально
через прокси-сервер, установленный на единственном компьютере, имеющем выход
в Сеть.
При этом binkd не может установить прямое соединение с удаленным узлом и нужно
использовать этот прокси-сервер.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Поддержка прокси-серверов была включена в версии 0.9.3.https, 0.9.4 и
более поздние.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Работа через HTTP прокси возможна только в том случае, если
в прокси-сервере разрешена команда CONNECT host 24554 (соединение с портом
24554) либо команда CONNECT разрешена для любого порта назначения. Обычно эта
команда используется в протоколе "защищенный HTTP" (ссылки вида HTTPS://...),
иначе называемого S-HTTP. Из-за этого такой прокси нередко называют
"HTTPS-прокси".
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Если binkd сообщит, что произошла ошибка авторизации, значит в настройке
прокси-сервера нужная команда запрещена или разрешена только для некоторых
портов (обычно 443).

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Предположим, что компьютер, подключенный к Internet, имеет во внутренней
</h3>сети IP-адрес 192.168.0.1 и прокси-сервер на нем "отвечает" по порту 3128.
Вот строка в файле конфигурации binkd, нобходимая для работы через этот
HTTP-прокси:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. Прокси-сервер без авторизации пользователя (не требуется вводить имя
</h3>и пароль):

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;proxy 192.168.0.1:3128
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. Прокси-сервер с авторизацией пользователя (требуется вводить имя и
</h3>пароль, к примеру, имя user и пароль password):

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;proxy 192.168.0.1:3128/user/password
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. Прокси-сервер фирмы Microsoft с авторизацией пользователя по протоколу
</h3>NTLM. (Требуется входить в домен.)
К примеру, имя user и пароль password, компьютер пользователя host и домен
ntdomain:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;proxy 192.168.0.1:3128/user/password/host/ntdomain
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Если администратор прокси-сервера разрешил соединения только с избранными
</h3>портами (обычно это порт 443) - тогда binkd выдаст диагностику "Connection
rejected by proxy". Вот пример:
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  31 Mar 16:48:43 [59987] BEGIN, binkd/0.9.3/SOCKS/HTTPS -p BINKD.CFG
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  31 Mar 16:48:43 [59987] clientmgr started
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+ 31 Mar 16:48:43 [40423] call to 2:5000/44@fidonet
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  31 Mar 16:48:43 [40423] trying 195.209.235.3, port 24554...
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  31 Mar 16:48:43 [40423] connected to proxy.osu.ru:24554
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  31 Mar 16:48:44 [40423] Connection rejected by proxy (HTTP/1.0 403 Forbidden)
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;? 31 Mar 16:48:44 [40423] unable to connect: {13} Permission denied

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В этом случае можно попробовать использовать http-туннелинг, например
</h3>с помощью httport (взять можно на http://www.htthost.com/) или найти узел,
который принимает соединения по binkp на 443 порт.


<hr>


<br><dir><h3>    07. Как подружить binkd и SOCKS-прокси.</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Нередко в ЛВС организации пользователи входят в Internet исключитально
через прокси-сервер, установленный на единственном компьютере, имеющем выход
в Сеть. При этом binkd не может установить прямое соединение с удаленным узлом
и нужно использовать этот прокси-сервер.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Поддержка прокси-серверов была включена в версию 0.9.4 и более поздние.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Binkd работает с SOCKS-прокси версий 4 и 5. Первые не требуют авторизации
(ввода имени и пароля), вторые как правило ее требуют.

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Предположим, что компьютер, подключенный к Internet, имеет во внутренней
</h3>сети IP-адрес 192.168.0.1 и SOCKS-сервер на нем "отвечает" по порту 1080.
Вот строка в файле конфигурации binkd, нобходимая для работы через этот
SOCKS-прокси:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. SOCKS-сервер без авторизации пользователя (не требуется вводить имя
</h3>и пароль):

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socks 192.168.0.1:1080
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. SOCKS-сервер с авторизацией пользователя (требуется вводить имя и
</h3>пароль, к примеру, имя user и пароль password):

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socks 192.168.0.1:1080/user/password
</h3>

<hr>


<br><dir><h3>    08. Как заставить binkd забрать почту с босса (аплинка)</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Нужно создать полл. binkd это умеет посредством опции -P:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd -P1:2/3 binkd.cfg
</h3>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;обычно при этом нужно, чтобы binkd завершил работу по окончании сессии,
для чего используется опция -p:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd -p -P1:2/3 binkd.cfg
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Если binkd после окончания сессии долго не завершается, уменьшите
</h3>значение параметра rescan-delay (иногда и timeout).

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Если binkd работает постоянно (например установлен как сервис в Windows)
</h3>и требуется регулярно забирать почту, нужно использовать внешние по отношению
к binkd программы или скрипты. Например, в DOS, Windows или OS/2 достаточно
выполнить команду:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cd . >> %outbound%\NNNNMMMM.ilo
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;где NNNN - шестнадцатиричный номер сети,
<h2 align=center>        MMMM - шестнадцатиричный номер узла,</h2>
<h2 align=center>        %outbound% - путь к аутбаунду нужной зоны.</h2>

<hr>


<br><dir><h3>    09. Ошибка "start_file_transfer: .: Permission denied"</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Это сообщение появляется когда binkd не может открыть файл на отправку,
указанный в лошке (*.?lo). Скорее всего в этом файле есть строка, состоящая
из одной ".", т.к. poll создается командой

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo . >> xxxxyyyy.flo
</h3>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ее нужно заменить на "cd . >> xxxxyyyy.flo"


<hr>


<br><dir><h3>    10. Binkd/win и диалап: автоматический дозвон и отсоединение</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Задача: настроить систему так, чтобы binkd инициировал телефонный звонок
к провайдеру, забирал почту, после чего соединение нужно разорвать.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Решения:

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 вариант
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Установить автоматическое установление связи и таймаут в свойствах
соединения (завершать соединение при отсутствии данных через указанное
время). При этом удобно использовать нестандартную программу дозвона
(Advanced Dialer и т.п.). binkd нужно будет периодически запускать
с ключом -p (и, возможно, -Pадрес - чтобы binkd создал полл на адрес)%

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd -p -P1:2/3.4  binkd.cfg


<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 вариант
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Используется опция командной строки -p и командный файл, в
котором запускается сервис удаленного доступа (RAS), затем запускается binkd,
после завершения binkd RAS останавливается.

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;для Windows NT и Windows 2000 два варианта:
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=== binkdpoll1.cmd
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rasdial Соединение
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd -p binkd.cfg
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rasdial Соединение /disconnect
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;===

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=== binkdpoll2.cmd
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;net start "remote access service"
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;net start "remote access auto service"
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd -p binkd.cfg
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;net stop "remote access auto service"
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;net stop "remote access service"
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;===

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 вариант (наилучший для win9x)
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Используются опции командной строки -p и -Pадрес, управление соединением
осуществляется нестандартной программой дозвона (к примеру, dialerp).
Этот вариант наиболее надежен (особенно в случае плохой связи с модемом
провайдера) благодаря тому, что dialerp при установлении соединения может
запускать указанные программы. Вот командный файл, который нужно вызывать
из параметра Execute файла конфигурации dialerp:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;====
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd -p -P1:2/3.4  binkd.cfg
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dialerp BREAK *
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;====

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Остается вопрос: где взять dialerp. Ответ: спроси у автора
</h3>(Alexander Vedjakin, 2:5020/540) или поищи в архивах файл-эх и на ftp/http.


<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;При любом варианте в файле конфигурации binkd нужно поставить малое
</h3>значение у параметра rescan-delay - тогда binkd будет
завершаться быстрее:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=== binkd.cfg
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Outbound rescans period (sec)
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rescan-delay 2
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;===

<hr>


<br><dir><h3>    11. Изменил конфиг при работющем binkd. Когда подействуют изменения?</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Начиная с версии 0.9.1 binkd научился определять обновление файла
конфигурации. Запущенный с флагом -C он при этом завершался с кодом 3.
(После каждой входящей сессии производилась проверка времени модификации).
Вот файл для запуска binkd версий 0.9.1-0.9.3 и 0.9.4-0.9.6/w32:
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;====
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:aaa
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd -C binkd.cfg
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if errorlevel 4 goto end
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if errorlevel 3 goto aaa
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:end
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;====
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В версиях 0.9.4/unix и /os2-emx (только в этих) сделан автоматический
перезапуск binkd, если он запущен с ключом -C. Кроме того, начиная с версии
0.9.4 проверяются файлы, включенные в конфиг по include, и проверка
происходит не только при входящих соединениях, но и через каждые
rescan-delay секунд.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В версии 0.9.4/w32 при установке binkd в качестве сервиса Windows NT, нужно
установить его с параметром -C: тогда binkd будет перечитывать конфиг.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;До версии 0.9.4 изменения конфига не проверялись, если binkd был запущен
в режиме client-only (ключ -c).
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В версях для unix конфиг перечитывается по сигналу SIGHUP, командой
kill -HUP `cat /var/run/binkd.pid`
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В версии 1.0 сделано автоматическое перечитывание конфига при его
изменении. Проверка проводится через каждые rescan-delay секунд.


<hr>


<br><dir><h3>    12. Как подружить binkd c T-mail/IP?</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hикак не подружить. Протоколы принципиально разные: binkd работает
по протоколу binkp, t-mail/IP - EMSI & etc.


<hr>


<br><dir><h3>    13. Где взять лог анализер для Binkd?</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Существует множество Perl'овых скриптов и несколько win32-бинарников,
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;к примеру вот:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkdstat 0.1 beta4 Christmas version 6.01.2002
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Statistics generator for BinkD
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(c) Dmitry Sergienko, 2:464/910@fidonet, dmitry@trifle.net 14.08.2000
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://web.apex.dp.ua/~trooper/binkdstat
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://binkd.grumbler.org/loganalisers/binkdstat-ds.0.1_beta4_Christmas

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Несколько разных генераторов лежат у Nick Soveiko:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://www.doe.carleton.ca/~nsoveiko/fido/binkd/statistics_generators/

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Также существует программа BndStat:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BNDST101.ZIP   34812 14-Aug-01 (AREA:AFTNMISC)
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BndStat 1.01. With sources. BinkD statistics generator. Compiled for all
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;platforms. Included win32 binaries. (C) Dmitry Rusov, 2:5090/94

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Комплект генераторов статистики binkd и qico для *nix (c) Vasily Krysin,
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2:5054/84: http://deep.perm.ru/files/fido/fustat-0.02.tar.gz

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Анализатор логов от val khokhlov (perl):
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://www.vk.kiev.ua/create/soft.html#bnkds
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://binkd.grumbler.org/loganalisers/stat-binkd.pl.gz

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkdstat (С) val khokhlov, Dmitry Kolvakh, обновлён в апреле 2006
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://www.pstu.ru/~keu/binkdstat.zip
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://binkd.grumbler.org/loganalisers/binkdstat.zip

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T-Hist (c) Michael Markowsky, 2:5020/378 (KLUG's BBS)
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Анализатор бинарного лог-файла разных мейлеров, в том числе Binkd.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Работает под DOS, Windows NT (2000, XP, 2003) и OS/2.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Страница программы: http://www.stopka.ru/klug/t-hist.htm
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Последняя версия: 0.30.alpha7 от 17.06.2003, дистрибутивный архив:
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://www.stopka.ru/klug/hist30a7.zip
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ftp://ftp.grumbler.org/pub/binkd/hist30a7.zip

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kleine Statistiker/BINKD for DOS v0.60a, русская версия
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Маленький генератор статистики для постинга её в эхоконференцию.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://krts.pp.ru/ftp/fido/statddos.rar
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ftp://ftp.grumbler.org/pub/binkd/statddos.rar


<hr>


<br><dir><h3>    14. Binkd долго коннектится (~20 секунд), хотя сетка скоростная (ЛВС).</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Наверное "включен" параметр backresolv (писать в лог доменное имя
удаленного хоста) и не настроен DNS.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Самое простое - нужно закомментировать backresolv в файле конфигурации.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Посложнее: необходимо настроить DNS.


<hr>


<br><dir><h3>    15. Почему BinkD не хочет понимать передаваемые параметры при запуске из inetd</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В inetd.conf нужно первым параметром указывать имя программы (в случае
с binkd - любая строка), вторым и далее параметрами - ключи запуска (-iqs и
прочее по вкусу), последним параметром - полнопутевое имя конфига:

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkp stream tcp nowait root /usr/fido/binkd binkd -isq /usr/fido/binkd.cfg

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Если не используется опция -q, в конфиге нужно убрать вывод на консоль
(закомментировать printq, percents, conlog).


<hr>


<br><dir><h3>    16. Можно ли сделать FREQ в binkd.</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Запросто! Binkd поддерживает WAZOO FREQ.

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Чтобы запросить файлы с удаленной системы нужно создать файл вида
</h3>nnnnmmmm.REQ и поместить его в outbound рядом с файлами *.?ut и *.?lo,
относящимся к нужному линку. Но файлы *.REQ не инициируют прозвонку в binkd,
для совершения FREQ нужно создать полл.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Для приема и обработки FREQ в Binkd настраивается вызов внешнего
фрек-процессора, поддерживающего SRIF (FSC-0086). Читай файл "!SRIF.TXT" и
комментарий к "exec" в конфиг-файле.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Вот примеры строки в конфиге для DOS-based OS и для *nix (там приходится
указывать маску с регулярными выражениями, чтобы binkd распознал файлы
независимо от регистра букв: и *.REQ, и *.req):

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exec "\\ftn\\allfix\\allfix.exe RP -SRIF *S" *.req
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exec "/ftn/bin/tmafreq-srif *S" *.[rR][eE][qQ]
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;С binkd совместимы следующие FREQ-процессоры (но не только эти, подойдет
</h3>любой FREQ-процессор, поддерживающий SRIF):
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Allfix от Harms Software Engineering: файлэхопроцессор со встроенным
обработчиком файловых запросов, существуют версии под DOS и OS/2;
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ViReq от Michael Haase (2:2432/280): специализированный FREQ-процессор
под Windows, распространяется Michael Massenberg (2:2411/505) посредством
Fido-over-IP, по модему и ISDN.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tmafreq от Maxim Timofeyev <tmahome@mail.tma.spb.ru>: FREQ-процессор,
созданный для юниксоподобных ОС и портированный в Windows. Получить tmafreq
можно на разных BBS и FTP с архивами файлэх, либо можно взять исходники с
анонимного CVS :pserver:anoncvs@tma.spb.ru:/cvsroot, модуль "tmafreq".


<hr>


<br><dir><h3>    17. Как добавить binkd в фидо-станцию, работающую на модеме.</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Нужно настроить модемный мэйлер и тоссер на режим BSO (binkley-style
outbound), так чтобы у всех (и у binkd тоже) совпадали inbound- и
outbound-каталоги. Например, в конфигурации мэйлера "T-mail" нужно указать:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BinkStyle_Pack_For All
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Если же мэйлер "умеет" только AMA (arcmail-attach) - можно попробовать
</h3>использовать файлбоксы и (или) найти программы, которые могут сконвертировать
очередь Вашего мейлера в BSO или файлбоксы. (К примеру, утилита Mail2dir
позволяет использовать файлбоксы с FrontDoor.) Такие средства лишают Вас
возможности отправить почту одному и тому же линку и по IP, и по модему
(например, в случае неполадок в одном из каналов связи). Другой вариант,
радикальный, но наиболее гибкий по возможностям - сменить мэйлер.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;См. также вопрос 34.


<hr>


<br><dir><h3>    18. Флаги по приему файла не создаются, программы не запускаются</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Наверняка неправильно указана маска в конфиге. Нужно так (версии для
windows и os/2 - первые две строки, в юникс-версиях остальные):

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;flag m:\\ftn\\flg\\pntseg.flg m:\\\\ftn\\\\inbound\\\\sec\\\\pntstr*.*
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;flag m:\\ftn\\flg\\toss.flg *.su? *.mo? *.tu? *.we? *.th? *.fr? *.sa? *.pkt

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exec "/usr/local/bin/ftrack -c /fido/conf/ftrack" *.[Pp][Kk][Tt]
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;flag "/ftn/flg/echo-in" /ftn/inboundsec/*.[Ss][Uu][0-9A-Za-z]
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;flag "/ftn/flg/echo-in" /ftn/inboundsec/*.[Mm][Oo][0-9A-Za-z]
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;flag "/ftn/flg/echo-in" /ftn/inboundsec/*.[Tt][Uu][0-9A-Za-z]
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;flag "/ftn/flg/echo-in" /ftn/inboundsec/*.[Ww][Ee][0-9A-Za-z]
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;flag "/ftn/flg/echo-in" /ftn/inboundsec/*.[Tt][Hh][0-9A-Za-z]
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;flag "/ftn/flg/echo-in" /ftn/inboundsec/*.[Ff][Rr][0-9A-Za-z]
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;flag "/ftn/flg/echo-in" /ftn/inboundsec/*.[Ss][Aa][0-9A-Za-z]
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;flag "/ftn/flg/fech-in" /ftn/inboundsec/*.[Tt][Ii][Cc]

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Надо указывать полное имя файла, который должен приняться, с четырьмя
</h3>слешами или маска должна начинаться с символа "звездочка". Для флага нужно
использовать двойные слэши.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Полное имя - потому что имя файла без пути означает событие приема файла
не в инбаунд, а в текущий каталог. Если маска начинается с "*", то в любой
(а поскольку файлы принимаются в один из инбаундов, работает для всех сессий
- и парольных, и непарольных).
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В юниксах нужно учитывать, что большие-маленькие буквы в именах файлов
различаются (используйте регулярные выражения в масках).


<hr>


<br><dir><h3>    19. Не работает skipmask.</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Для skipmask имя файла сравнивается без пути и регистрозависимо.


<hr>


<br><dir><h3>    20. Binkd под DOS.</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Victor Pashkevich (2:451/30) портировал binkd 0.9.2 для операционной
системы MS DOS. C марта 2003 года новый вариант этого порта поддерживается
официально (и включен в дерево исходников на CVS).
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Исходники binkd 0.9.2/dos:
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://www.doe.carleton.ca/~nsoveiko/fido/binkd/0.9.2/
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Исходники и бинарники binkd 0.9.2/dos и binkd 0.9.5a/dos (не самые свежие):
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://www.n451.z2.fidonet.net/binkd/
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Свежие исходники - на CVS.

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Особенность версии под DOS в том, что в системе нет поддержки сети и каждая
возможная реализация использует один из стеков IP, разработанных независимыми
производителями. Реализация от Victor Pashkevich работает только с драйверами
IBM TCP/IP версии 2.1. Найти их можно в Internet:
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://www.ibm.com
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://binkd.grumbler.org/tcpdos21.rar
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ftp://ftp.grumbler.org/pub/tcpdos/tcpdos21.rar

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Кроме имеющегося, каждый желающий может портировать binkd под имеющуюся
</h3>у него версию драйверов IP под DOS :-). Исходники - в Internet'е и файл-эхе
(см. "Где взять свежую версию BinkD.")


<hr>


<br><dir><h3>    21. Binkd под Windows 3.x.</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sergey Zharsky (zharik@usa.net) портировал binkd 0.9.2 и binkd 0.9.5 для
Windows 3.x. Работает c IP стеками Trumpet Winsock ver. 3.0 revision D и
Novell TCP/IP Client for Win 3.11 (см. ответ на вопрос "Binkd под DOS."
параграф "Особенность...").

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Исходники и бинарники:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://zharik.host.sk/index.php?pages=d&page=d

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Только 0.9.2:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://www.doe.carleton.ca/~nsoveiko/fido/binkd/0.9.2/


<hr>


<br><dir><h3>    22. Разные FTN-домены в binkd и тоссер, не поддерживающий 5D outbound.</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ситуация: два домена (с разными номерами зон, хотя это непринципиально),
почта на первый домен отправляется, на второй - нет. Такая ситуация может
возникнуть, если отсутствует поддержка 5D BSO у тоссера, трекера и других
фидошных программ, используемых на FTN-системе.

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Типичная конфигурация binkd для двух доменов и 5D outbound:
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;domain fidonet c:\\ftn\\outbound\\fidonet 2
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;domain omeganet c:\\ftn\\outbound\\omeganet 11
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;address 2:5070/222@fidonet 11:58/6@omeganet

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В domain прописывается не номер зоны собственного адреса, как можно было бы
</h3>подумать, а зона, которую не надо добавлять к имени outbound'а (т.е. для зоны,
указанной в строке domain, расширения подкаталога аутбаунда не обрабатываются).

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Если бы твой тоссер создавал для omeganet бандлы в каталоге omeganet, то
</h3>надо было бы писать так, как указано выше; а раз он не работает с 5D и создает
их в fidonet.00b, то писать надо вот так:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;domain fidonet c:\\ftn\\outbound\\fidonet 2
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;domain omeganet c:\\ftn\\outbound\\fidonet 2
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;address 2:5070/222@fidonet 11:58/6@omeganet

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Все свои адpеса обязательно пpописываешь с доменами.
Каталог аyтбаyнда и пyть должен быть везде одинаковый (4D-тоссер считает все
адреса принадлежащими одному домену).

<hr>


<br><dir><h3>    23. Как работает "domain ... alias-for ..." в конфиге</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Алиасы учитываются при анализе адреса удаленной стороны.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Пример:

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;domain fidonet.net alias-for fidonet

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;При проверке домена: fidonet.net в адресе удаленной стороны заменятеся
на fidonet и адрес 1:2/3.4@fidonet.net будет восприниматься как 1:2/3.4@fidonet


<hr>


<br><dir><h3>    24. Что означает диагностика "send: TCP/IP error (-10000)" и как это лечить?</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Тут две ошибки, основная исправлена перед ответвлением binkd 0.9.5-stable:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. Дело в том, что в паре мест в коде binkd не было сделано сохранение
</h3>значения кода ошибки, но это не проявлялось нигде кроме как в win-версии.
Ошибка проявлялась потому, что в run-time библиотеке MS Visual C (в отличие от
большинства) нарушается стандарт. Ошибка в том, что errno и h_errno в MSVC RTL
являются макросами, раскрывающимся в системные вызовы, и все они сходятся в
вызов GetLastError(). А значение, возвращаемое этой системной функцией,
сбрасывается в нуль при любом успешном системном вызове. Таким образом, errno
выставляется в ноль например при успешном открытии файла. (По стандарту errno
не должен меняться если не было ошибки.) В binkd влияние этого бага устранено:
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2003/04/28 07:30:16  gul
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* Bugfix: Log() changes TCPERRNO

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ошибка в Winsock - select() всегда возвращает успешный код для non-blocked
socket. Влияние ее (и других обнаруженных в winsock ошибок) частично устранено:
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2003/06/06 16:27:44  gul
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* Workaround winsock bug - giveup CPU when sending file
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2003/08/11 08:41:55  gul
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* workaround winsock bug (patch by Alexander Reznikov)
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2003/08/24 00:29:31  hbrew
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* win9x-select-workaround fix, thanks to Pavel Gulchouck)

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Eсть ещё эффект при высоких уровнях протоколирования (в лог пишется куча
</h3>сообщений 'data transfer would block', отладочная информация по результатам
работы select()). Hо на работу в обычном режиме это не влияет. Устранить это
можно, но Павел не стал усложнять код.


<hr>


<br><dir><h3>    25. Argus (Radius) и binkd: ошибка Argus "Aborting due to carrier loss"</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сессия между binkd и Radius (или Argus - это несущественно) обрывается
с непонятной диагностикой "Aborting due to carrier loss" при включенном
в Radius шифровании трафика. При этом на стороне binkd соединение обрывается
по инициативе удаленной стороны ("Connection reset by peer").

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Лог со стороны Radius:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30-Aug-2003 22:24:31 Encrypted (2:463/375) session
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30-Aug-2003 22:24:32 Aborting due to carrier loss
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30-Aug-2003 22:24:32 Session aborted
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30-Aug-2003 22:24:32 End

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Причина в том, что авторы Argus придумали свой способ шифрования трафика,
</h3>и в binkd это расширение не реализовано. Все бы ничего, но тонкость в том, что
Argus (и вслед за ним Radius) не соблюдает совместимость с протоколом binkp:
шифрование включается безусловно, без проверок его поддержки удаленной
стороной. Такое вопиющее нарушение спецификации недопустимо - но увы. Выход:
отключить шифрование в Argus для каждого линка, у которого используется binkd.

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Правильное поведение мэйлера должно было быть следующим:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- если шифрование необязательно - продолжать некриптованную сессию;
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- если в настройке мэйлера установлено обязательное шифрование - сообщить
удаленной стороне об аварийном завершении, например так:
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M_ERR "DES encription required"


<hr>


<br><dir><h3>    26. В названии каталога - символ комментария и binkd не видит каталог.</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;При настройке binkd в работающей станции с bink/+: в путях встречается
символ "#", он является комментарием для конфига binkd и, чтобы binkd воспринял
правильный путь, этот символ надо искэйпить в конфиге обратным слэшем:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;domain fidonet c:\\fido\\\#out
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;inbound-nonsecure c:\\fido\\unsec\#in
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;inbound c:\\fido\\\#in

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В версии 1.0 начиная со снапшота 1.0a-317 этот искейпинг можно не
</h3>использовать, поскольку началом комментария в середине строки стала считаться
последовательность пробела и решетки (" #") или табуляции и решетки. Примеры
ниже.

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Нет комментария:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp-inbound c:\\fido\\temp#this_is_not_a_comment_but_a_directory_name

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Комментарии:
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;inbound c:\\fido\\in # это комментарий, потому что есть пробел перед "#"
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Вся эта строка - комментарий


<hr>


<br><dir><h3>    27. Есть ли возможность запуска приложения в binkd по событию?</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Если речь о временных событиях - нет, и не будет. Для управления событиями
существуют разнообразные планировщики, в современных операционных системах они
включены в поставку.

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Если же речь о событии приема некоторого файла - давно реализовано (начиная
</h3>с версии 0.9), см. в конфиге токены exec и flag.


<hr>


<br><dir><h3>    28. В чем различие между binkd/w32 и binkd/w9x?</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Binkd/w32 - традиционный вариант binkd, консольное win32 приложение.
Binkd/w9x - GUI-приложение win32, создающее временные консольные окна по мере
необходимости. Если запустить binkd/w32 в существующем консольном окне
(например, в окне command.com или cmd.exe), он будет работать в том же окне.
В отличие от него binkd/w9x при запуске сразу же отдает управление вызвавшей
его задаче.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Необходимость разработки binkd/w9x была вызвана тем, что в Windows 95/98/Me
и в Windows NT/2000/XP/2003 есть несколько серьезных различий.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Во-первых, консоль реализована по-разному. Основное отличие - консоль
в Windows 9x не воспринимает сигналы shutdown и window close, поэтому
работающий binkd/w32 не может корректно завершиться при закрытии окна и
завершении (перезагрузке) системы.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Во-вторых, в версиях Windows разных веток сильно различаются принципы
работы сервисов.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В итоге, binkd 1.0a/w32 может работать только сервисом Windows NT и
последующих, а binkd 1.0a/w9x - только сервисом Windows 95/98/Me. В будущем
планируется сделать поддержку сервисов NT в binkd/w9x. Корректная поддержка
работы binkd/w32 сервисом под Windows 9x невозможна из-за описанных
особенностей реализации консоли в этих системах.


<hr>


<br><dir><h3>    29. Сильно не хватает чата в binkd! И время синхронизировать хочется.</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Чтобы початиться - используй talk, icq или irc (да хоть Gadu-Gadu).
Если есть, где запустить binkd, то по тому же каналу может pаботать и все
перечисленное, и многое другое. Чаться до умопомpачения, если сильно надо.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;И для синхронизации времени по IP есть специальные утилиты, например,
ntpdate. Причем ntp* берут время с серверов точного времени, в отличие от
мэйлеров.


<hr>


<br><dir><h3>    30. Binkd-service принимает входящее соединение только после исходящего.</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Такое поведение замечено при работе binkd/w32, установленного сервисом
на компьютер с работающим McAfee Firewall. При этом файрвол стартует после
запуска binkd и не обнаруживает его активность, соответственно не дает
установиться соединению. Соответственно нужно обеспечить запуск binkd после
инициализации файрвола.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Возможные решения: отказаться от использования binkd как самостоятельного
Windows NT service и запускать его из-под внешнего менеджера сервисов, или
запускать как обычную программу, либо отказаться от использования такого
файрвола.


<hr>


<br><dir><h3>    31. Ошибка "start_file_transfer: ECHO is off.: No such file or directory".</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Сообщение в логе:
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;в английской версии Windows
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;? 10 Sep 20:37:23 [1664] start_file_transfer: ECHO is on.: No such file
or directory
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;в русской версии Windows
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;? 10 Sep 20:37:23 [1664] start_file_transfer: Режим вывода команд на экран
(ECHO) отключен.: No such file or directory

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Такая ситуация возникает в том случае, когда полл создан командой
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo >> 12345678.ilo
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;При этом первая строка файла - сообщение от команды echo о текущем статусе
эховывода на экран. О том, как правильно создавать полл см. вопрос 32. См.
также вопрос 09.


<hr>


<br><dir><h3>    32. Как правильно создать полл.</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Чтобы создать полл в BSO, нужно создать пустой файл NNNNMMMM.ilo,
NNNNMMMM.clo, NNNNMMMM.dlo или NNNNMMMM.flo. Имя файла состоит из:
шестнадцатиричного номера сети (первые 4 знака), шестнадцатиричного номера узла
(4 знака с пятого по восьмой), точки, знака атрибута (i = immediate, c = crash,
d = direct, f = normal) и букв "lo".
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Конечно, если нужный файл уже существует, создавать его не нужно, более
того: во избежание потери почты нужно следить чтобы он не был переписан.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Наиболее универсальная команда (работает в DOS, Windows, OS/2, клонах unix,
CP/M и многих других):

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cd . >>NNNNMMMM.flo
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В DOS, Windows, OS/2 также работает:
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;type nul >>NNNNMMMM.flo
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В клонах UNIX можно использовать на выбор одну из нескольких команд:
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;touch NNNNMMMM.flo
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo -n "" >>NNNNMMMM.flo
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;>>NNNNMMMM.flo
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cat /dev/null >>NNNNMMMM.flo


<hr>


<br><dir><h3>    33. Что означают цифpы в квадpатных скобках в логе?</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Это PID (Process ID) в мультипроцессных версиях binkd (например, в версиях
для юниксоподобных ОС) или TID (Thread ID) в многопоточных версиях binkd
(например, в версиях для Windows).
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Номер процесса (или потока) облегчает анализ лога: позволяет выделить
сообщения от одного процесса (потока) binkd. В частности, помогает разделить
сообщения, относящиеся к разным сессиям.


<hr>


<br><dir><h3>    34. Как настроить эхотаг для отправки исходящего нетмейла?</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Нужно настроить программу упаковки нетмэйла таким образом, чтобы почта
упаковывалась в пакеты BSO (Binkley Style Outbound). Если такая программа до
сих пор не использовалась, нужно её установить. В некоторых модемных мэйлерах
возможность упаковки нетмэйла в BSO предусмотрена разработчиками (например,
в T-mail, начиная с версии 2500).
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;См. также ответ на вопрос 17.


<hr>


<br><dir><h3>    35. Зачем нужна директива share в конфиге (shared aka)?</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Shared AKA используется для отправки нетмэйла по одному из нескольких
альтернативных маршрутов (одному из нескольких линков) и является защитой от
"падения" линка.
Для примера в конфиге

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;share 2:999/999 2:5020/52 2:5020/238
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;указаны аплинки 2:5020/52 и 2:5020/238 с подстановкой (точнее, добавлением)
</h3>AKA 2:999/999.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Затем настраиваешь паковку netmail на адрес 2:999/999, и binkd отправит его
на того аплинка, с которым будет первая сессия. Если нет связи с 2:5020/52 -
нетмэйл уйдёт к 2:5020/238. Если нет связи с 2:5020/238 - уйдёт к 2:5020/52.
При этом адресат пакета 2:999/999 будет заменен на реального получателя, и
в пакет будет проставлен пароль пакета того линка, кому будет отправлено
письмо.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Shared AKA реализован в binkd версий 1.0 и старше.


<hr>


<br><dir><h3>    36. Зачем нужна директива ftrans в конфиге?</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Чтобы разместить binkd и тоссер на разных компьютерах в сети, при этом
аутбаунд располагается на сетевом диске и пути к нему разные. Более того,
тоссер может работать на машине с FAT и путями вида d:\long\path\to, а binkd -
на юниксовой с путями вида /mnt/samba/wincomp1/path/to.


<hr>


<br><dir><h3>    37. Binkd в Windows XP работает сервисом только от администратора. Почему?</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В руководствах по информационной безопасности рекомендуется каждый сервис
выполнять с правами специального пользователя. Но при попытке сделать это для
binkd получаем ошибку, и чтобы добиться результата, нужно изменить настройку.
Проще всего взять версию 1.0a-499 или старше: в этой версии требуемые binkd
права минимизированы. Если же используется binkd 0.9.x, нужно изменить
настройку в операционной системе.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Во-первых, установить и запустить сервис в Windows NT/2000/XP/2003 может
только администратор (дать право другому пользователю на установку, запуск,
остановку и удаление сервисов можно в "локальной политике безопасности"; также
можно воспользоваться программой subinacl.exe из Windows 2000 Resource Kit и
Windows 2003 Resource Kit).
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Во-вторых, binkd 0.9.x при работе сервисом требуется право записи в ветку
реестра HKLM\\SYSTEM\\CurrentControlSet\\Services\\binkd-service\\parameters
(если Вы указываете при установке сервиса имя для сервиса, вместо
"binkd-service" будет выбранное имя, из которого удалены пробелы).
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Для описываемой ситуации установить сервис можно и из-под учетной записи
администратора, затем отредактировать параметры запуска сервиса в программе
MMC из остнастки "Services" ("Службы"): задать пользователя (например, fido)
и пароль. Затем (для версии 0.9.x) нужно дать право на редактирование этой
ветки пользователю fido (в Windows XP или 2003 можно это сделать в редакторе
реестра, а в Windows 2000 - с помощью программы subinacl.exe из Resource Kit.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Чтобы можно было запускать или останавливать сервис binkd обычному
пользователю, нужно выдать ему соответстствующие права, например, так
(для пользователя username и сервиса с именем binkd-service):

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;subinacl /service binkd-service /grant=username=TO
</h3>
<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Подробнее см. http://support.microsoft.com/kb/288129/en-us (Windows 2000)
</h3>и http://support.microsoft.com/kb/325349/en-us (Windows 2003)


<hr>


<br><dir><h3>    A1. Обнаружил баг в binkd!</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Попpобуйте освежить веpсию (возможно, ошибка уже исправлена). Если
не помогло - надо "пинать" pазpаботчиков:
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;binkd-bugs@happy.kiev.ua
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pavel Gulchouck 2:463/68
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pассылка binkd-dev@happy.kiev.ua
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;В писме нужно подробно описать ситуацию возникновения ошибки, при
этом обязательно указать номеp веpсии и приложить вырезку из подpобного
лога (loglevel больше 5).


<hr>


<br><dir><h3>    A2. Как связаться с разработчиками.</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Автор первых версий binkd - Дмитрий Малов - ныне отошел от проекта.
В 2000-2003 годах проект координирует Павел Гульчук 2:463/68 (Pavel Gulchouck
<gul@gul.kiev.ua>), он же и пишет большую часть кода.
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Для общения разработчиков и тестеров создана рассылка:
binkd-dev@happy.kiev.ua. Чтобы на нее подписаться, напишите письмо:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To: majordomo@happy.kiev.ua
</h3><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Subject:

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;subscribe binkd-dev
</h3>

<hr>


<br><dir><h3>    A3. Хочу сразу узнавать об изменениях в binkd!</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Подпишись на список рассылки binkd-diffs@happy.kiev.ua: по нему
отправляются изменения в исходниках (заодно можно и проверить патчи на ошибки).
Инструкция в предыдущем ответе.

<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Для обсуждения binkd, общения пользователей и разработчиков существуют
</h3>две эхоконференции FIDOnet: русскоязычная RU.BINKD и англоязычная
(международная) BINKD. Ищите на эхохабах :).


<hr>


<br><dir><h3>    A4. А когда binkd будет делать ... ?</h3></dir>

<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Возможно, будет когда-нибудь. А может и не будет. Можно подождать, пока
желаемая возможность будет реализована или устранить "недостаток"
самостоятельно - ведь исходники открыты. При этом имеет смысл прислать
разработчикам патч: возможно, он будет включен в основную ветку и наверняка
будет размещен на вебсайте или FTP.


<P><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=== Конец.
</h3>
</body>
</html>
