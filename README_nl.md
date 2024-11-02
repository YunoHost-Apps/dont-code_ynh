<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Dont-code Services voor Yunohost

[![Integratieniveau](https://dash.yunohost.org/integration/dont-code.svg)](https://ci-apps.yunohost.org/ci/apps/dont-code/) ![Mate van functioneren](https://ci-apps.yunohost.org/ci/badges/dont-code.status.svg) ![Onderhoudsstatus](https://ci-apps.yunohost.org/ci/badges/dont-code.maintain.svg)

[![Dont-code Services met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=dont-code)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Dont-code Services snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

Dont-code is a low-code / no-code platform letting user create their own applications based on complete feature sets developed by IT.
You can find more information here: https://dont-code.net

This Yunohost app installs the server part (services + mongo database) needed to run the dont-code applications.

### Features

- Thanks to the Powerful [Builders](https://dont-code.net/ide-ui) and [Previewers](https://dont-code.net/ide-ui), a user can directly design its application and immediately see the result
- One only needs to describe its application by filling sentences prepared by the platform.
- By default it provides support for images, currency, text, numbers, countries, links.
- Multiple plugins allow you to list, edit, make reports, call services, save to database, save in browser, and so on...
- Plugins can be developed by any IT team
- Projects and all user's data are backed up as part of the Yunohost backup process
- As well any documents or images uploaded by users will be backed up


**Geleverde versie:** 0.3.2~ynh8

**Demo:** <https://dont-code.net/apps.html>

## Schermafdrukken

![Schermafdrukken van Dont-code Services](./doc/screenshots/ide.gif)
![Schermafdrukken van Dont-code Services](./doc/screenshots/previewer.gif)

## Documentatie en bronnen

- Officiele website van de app: <https://dont-code.net>
- Officiele gebruikersdocumentatie: <https://dont-code.net/news.html>
- Officiele beheerdersdocumentatie: <https://dont-code.net/developers.html>
- Upstream app codedepot: <https://github.com/dont-code>
- YunoHost-store: <https://apps.yunohost.org/app/dont-code>
- Meld een bug: <https://github.com/YunoHost-Apps/dont-code_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
of
sudo yunohost app upgrade dont-code -u https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
