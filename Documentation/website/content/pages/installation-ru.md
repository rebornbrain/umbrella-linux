Title: Установка
Date: 2017-10-05 12:39
Category: docs
Slug: installation
Lang: ru

Сначала крепко подумайте -- нужно ли Вам тратить время на эту программу ?

В сети сейчас так мало информации об Umbrella Linux, что скорее всего
Вы ничего об этой системе не знаете. Если это так, то зачем она Вам ?
Найдите кого-нибудь (в Интернете или реале), кто может рассказать Вам о
ней. Или просто подождите когда здесь появится больше информации.

Лучший способ попробовать Umbrella Linux на сегодня -- установить его в
виртуальную машину под управлением VirtualBox. (на самом деле, это 
единственный режим установки, который хоть как-то был проверен).

1. Скачайте установочный образ Ubuntu Xenial ( 
[32-х](http://archive.ubuntu.com/ubuntu/dists/xenial/main/installer-i386/current/images/netboot/mini.iso)
или [64-х](http://archive.ubuntu.com/ubuntu/dists/xenial/main/installer-amd64/current/images/netboot/mini.iso)
битный, на Ваш
выбор в зависимости от количества памяти на сервере )

2. Создайте виртуальную машину, где будет жить Umbrella Linux. Для типичной
системы (но без дополнительного места, зарезервированного для домашних папок
пользователей или их почты) понадобится виртуальная машина с 25Гб диском,
3Gb оперативной памяти и парочкой виртуальных процессоров. Когда будете
создавать эту виртуальную машину -- сразу подключите к её виртуальному CD
приводу скачанный Вами ранее установочный образ Ubuntu Xenial.

    *Необязательно:* если у Вас на физическом компьютере две сетевые карточки --
можно передать одну из них в качестве второй сетевой карточки виртуалки.
Подключая к этой карточке через коммутатор другие компьютеры, можно будет
разворачивать на них рабочие станции и/или использовать их как терминалы.
Если к Вас нет второй сетевой карточки (или другой возможности подключиться
к сетевому мосту "pub" внутри виртуалки) -- Вы сможете пользоваться своей
новой системой только так, как будто находитесь вне её.

3. Загрузите виртуальную машину и установите на ней Ubuntu Xenial со всеми
настройками по умолчанию. Не выбирайте ничего даже в tasksel. Создайте себе
временного пользователя с простым паролем.

4. После окончания установки Ubuntu Linux, войдите в него под временным
пользователем и, при помощи команды `sudo -i`, станьте root-ом. Потом скачайте
(командой `wget`) все файлы из [этого каталога](/umbrella-linux/installer/).
Эти файлы -- простой текст. В том числе и bash скрипт `./umbrella-install`,
которому после скачивания нужно дать права для исполнения командой
`chmod +x ./umbrella-install`. Если Вы хотите сгенерировать
уникальные пароли и сертификаты для своей системы -- удалите файл
 `umbrella_keys.xml` (он будет перегенерирован программой установки).
Не устанавливайте дополнительных пакетов (кроме разве что `mc` и `aptitude`).

5. Просмотрите `*.xml` файлы и поменяйте настройки в них (поскольку
документации сейчас нет -- желательно проконсультироваться при этом
с кем-нибудь, кто их уже видел). Если Вы решили изменить название системы
или её местоположение -- удалите `umbrella_keys.xml`, чтобы заново
сгенерировать сертификаты.

6. Запустите скрипт `./umbrella-install`. Он должен провести установку в
автоматическом режиме, но может потребовать жёсткой (с обязательным 
"Power off"/"Power on") перезагрузки виртуальной машины на которой Вы его
запускаете. После перезагрузки запустите скрипт снова, он должен закончить
установку. Установка может занять несколько часов в зависимости от скорости
жесткого диска.

Что делать дальше ?

Средствами VirtualBox Вы можете пробросить через NAT какой-нибудь порт (скажем
10022) на порт 22 первого сетевого интерфейса Вашей виртуальной машины. Это
позволит соединиться с ней по протоколу ssh. Чтобы войти используйте имя
первого административного пользователя, указанного в umbrella.xml и пароль,
который сообщила Вам программа установки. Вы так же можете войти в свою
новую систему в графическом режиме установив клиент X2Go (при создании сессии
там нужно будет выбрать "Другой тип сессии" и набрать `umbrella-session` в 
текстовом поле, в качестве адреса укажите localhost порт 10022). Внутри
графической сессии Вы можете запустить chromium и зайти на
`https://gosa.<ваш домен из umbrella.xml>/` в интерфейс Fusion
Directory, который позволит Вам регистрировать пользователей, группы и рабочие
станции. Потом Вы можете подключить компьютеры ко второму физическому
интерфейсу, проброшенному в качестве второй сетевой
карточки виртуальной машины, и загрузить их по PXE, чтобы увидеть как
работают терминалы и развёртывание рабочих станций по сети.
