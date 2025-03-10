<!--
To README zostało automatycznie wygenerowane przez <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Nie powinno być ono edytowane ręcznie.
-->

# Dont-code Services dla YunoHost

[![Poziom integracji](https://apps.yunohost.org/badge/integration/dont-code)](https://ci-apps.yunohost.org/ci/apps/dont-code/)
![Status działania](https://apps.yunohost.org/badge/state/dont-code)
![Status utrzymania](https://apps.yunohost.org/badge/maintained/dont-code)

[![Zainstaluj Dont-code Services z YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=dont-code)

*[Przeczytaj plik README w innym języku.](./ALL_README.md)*

> *Ta aplikacja pozwala na szybką i prostą instalację Dont-code Services na serwerze YunoHost.*  
> *Jeżeli nie masz YunoHost zapoznaj się z [poradnikiem](https://yunohost.org/install) instalacji.*

## Przegląd

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


**Dostarczona wersja:** 0.3.3~ynh1

**Demo:** <https://dont-code.net/apps.html>

## Zrzuty ekranu

![Zrzut ekranu z Dont-code Services](./doc/screenshots/ide.gif)
![Zrzut ekranu z Dont-code Services](./doc/screenshots/previewer.gif)

## Dokumentacja i zasoby

- Oficjalna strona aplikacji: <https://dont-code.net>
- Oficjalna dokumentacja: <https://dont-code.net/news.html>
- Oficjalna dokumentacja dla administratora: <https://dont-code.net/developers.html>
- Repozytorium z kodem źródłowym: <https://github.com/dont-code>
- Sklep YunoHost: <https://apps.yunohost.org/app/dont-code>
- Zgłaszanie błędów: <https://github.com/YunoHost-Apps/dont-code_ynh/issues>

## Informacje od twórców

Wyślij swój pull request do [gałęzi `testing`](https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing).

Aby wypróbować gałąź `testing` postępuj zgodnie z instrukcjami:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
lub
sudo yunohost app upgrade dont-code -u https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
```

**Więcej informacji o tworzeniu paczek aplikacji:** <https://yunohost.org/packaging_apps>
