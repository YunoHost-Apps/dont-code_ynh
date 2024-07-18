<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Dont-code Services YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/dont-code.svg)](https://ci-apps.yunohost.org/ci/apps/dont-code/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/dont-code.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/dont-code.maintain.svg)

[![Instalatu Dont-code Services YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=dont-code)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Dont-code Services YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

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


**Paketatutako bertsioa:** 0.3.2~ynh6

**Demoa:** <https://dont-code.net/apps.html>

## Pantaila-argazkiak

![Dont-code Services(r)en pantaila-argazkia](./doc/screenshots/ide.gif)
![Dont-code Services(r)en pantaila-argazkia](./doc/screenshots/previewer.gif)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://dont-code.net>
- Erabiltzaileen dokumentazio ofiziala: <https://dont-code.net/news.html>
- Administratzaileen dokumentazio ofiziala: <https://dont-code.net/developers.html>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/dont-code>
- YunoHost Denda: <https://apps.yunohost.org/app/dont-code>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/dont-code_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
edo
sudo yunohost app upgrade dont-code -u https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
