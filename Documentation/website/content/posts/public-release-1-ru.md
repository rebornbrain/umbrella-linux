Title: первая открытая версия 0.1
Date: 2017-10-06 22:10
Slug: release-0.1
Lang: ru

Рад представить первую публичную версию Umbrella Linux.

### Текущее состояние проекта:

Несмотря на то, что первая открытая версия выходит сегодня, проекту
Umbrella Linux на самом деле уже несколько лет. Он был создан в 2013 с нуля
мной (К.Л.М.) и двумя моими друзьями. На сегодня Umbrella Linux уже
развёрнут в нескольких организациях от маленьких (десятки сотрудников) до
больших (сотни) и очень больших (тысячи географически разбросанных
сотрудников). Всё это, конечно, заслуга Debian и Ubuntu Linux, которые,
при правильной настройке, представляют из себя стабильную и мощную
платформу, достаточно зрелую для использования в каждодневной работе. Сам
Umbrella Linux (который, собственно, и "настраивает всё правильно") на
данный момент находится в стадии альфа-версии, поскольку мы ещё очень
далеки от достижения полноты в реализации всех его возможностей. Многое
можно улучшить и добавить. Однако, то, что уже добавлено -- как правило,
работает хорошо.

Эта версия была выпущена благодаря недавно разработанной поддержке запуска
Umbrella Linux в [LXD контейнерах](https://linuxcontainers.org/lxd/).
 Таким образом, задача написания программы
установки системы в набор LXD контейнеров стала обозримой, а потом и
решённой. Заметьте, что, в отличие от QEMU/KVM, платформа LXD значительно
более молодая и, на данный момент, должна считаться менее безопасной. Сама
программа установки Umbrella Linux на сегодня прошла лишь минимальное
тестирование. Несмотря на это, для типичных конфигураций системы
она всё-же работает, а значит открывает возможность познакомиться
с Umbrella Linux в безопасной виртуальной среде. В будущем (да и сейчас это
можно сделать в ручном режиме) появится возможность мигрировать виртуальные
машины Umbrella Linux после установки из LXD в QEMU/KVM по одной, что позволит
развернуть в окончательном варианте автоматически установленную версию системы.

Чтобы попробовать Umbrella Linux смотрите 
[инструкции по установке](/umbrella-linux/ru/installation/).