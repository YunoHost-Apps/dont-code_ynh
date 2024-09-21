<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Dont-code Services для YunoHost

[![Уровень интеграции](https://dash.yunohost.org/integration/dont-code.svg)](https://ci-apps.yunohost.org/ci/apps/dont-code/) ![Состояние работы](https://ci-apps.yunohost.org/ci/badges/dont-code.status.svg) ![Состояние сопровождения](https://ci-apps.yunohost.org/ci/badges/dont-code.maintain.svg)

[![Установите Dont-code Services с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=dont-code)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Dont-code Services быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

Dont-code is a low-code / no-code platform letting user create their own applications based on complete feature sets developed by IT.
You can find more information here: https://dont-code.net

This Yunohost app installs the server part (services + mongo database) needed to run the dont-code applications.

### Features

- Thanks to the Powerful [Builders](https://dont-code.net/ide-ui) and [Previewers](https://dont-code.net/ide-ui), a user can directly design its application and immediately see the result
- One only needs to describe its application by filling sentences prepared by the platform.
- By default it provides support for images, currency, text, numbers, countries, links.
- Multiple plugins allow you to list, edit, make reports, call services, save to database, save in browser, and so on...
- Plugins can be developed by any IT team
- Projects and all user's data are backuped up as part of the Yunohost backup process
- As well any documents or images uploaded by users will be backed up


**Поставляемая версия:** 0.3.2~ynh7

**Демо-версия:** <https://dont-code.net/apps.html>

## Снимки экрана

![Снимок экрана Dont-code Services](./doc/screenshots/ide.gif)
![Снимок экрана Dont-code Services](./doc/screenshots/previewer.gif)

## Документация и ресурсы

- Официальный веб-сайт приложения: <https://dont-code.net>
- Официальная документация пользователя: <https://dont-code.net/news.html>
- Официальная документация администратора: <https://dont-code.net/developers.html>
- Репозиторий кода главной ветки приложения: <https://github.com/dont-code>
- Магазин YunoHost: <https://apps.yunohost.org/app/dont-code>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/dont-code_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
или
sudo yunohost app upgrade dont-code -u https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
