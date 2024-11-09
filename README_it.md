<!--
N.B.: Questo README è stato automaticamente generato da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON DEVE essere modificato manualmente.
-->

# Dont-code Services per YunoHost

[![Livello di integrazione](https://dash.yunohost.org/integration/dont-code.svg)](https://dash.yunohost.org/appci/app/dont-code) ![Stato di funzionamento](https://ci-apps.yunohost.org/ci/badges/dont-code.status.svg) ![Stato di manutenzione](https://ci-apps.yunohost.org/ci/badges/dont-code.maintain.svg)

[![Installa Dont-code Services con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=dont-code)

*[Leggi questo README in altre lingue.](./ALL_README.md)*

> *Questo pacchetto ti permette di installare Dont-code Services su un server YunoHost in modo semplice e veloce.*  
> *Se non hai YunoHost, consulta [la guida](https://yunohost.org/install) per imparare a installarlo.*

## Panoramica

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


**Versione pubblicata:** 0.2.10~ynh7

**Prova:** <https://dont-code.net/apps.html>

## Screenshot

![Screenshot di Dont-code Services](./doc/screenshots/previewer.gif)
![Screenshot di Dont-code Services](./doc/screenshots/ide.gif)

## Documentazione e risorse

- Sito web ufficiale dell’app: <https://dont-code.net>
- Documentazione ufficiale per gli utenti: <https://dont-code.net/news.html>
- Documentazione ufficiale per gli amministratori: <https://dont-code.net/developers.html>
- Repository upstream del codice dell’app: <https://github.com/dont-code>
- Store di YunoHost: <https://apps.yunohost.org/app/dont-code>
- Segnala un problema: <https://github.com/YunoHost-Apps/dont-code_ynh/issues>

## Informazioni per sviluppatori

Si prega di inviare la tua pull request alla [branch di `testing`](https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing).

Per provare la branch di `testing`, si prega di procedere in questo modo:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
o
sudo yunohost app upgrade dont-code -u https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
```

**Maggiori informazioni riguardo il pacchetto di quest’app:** <https://yunohost.org/packaging_apps>
