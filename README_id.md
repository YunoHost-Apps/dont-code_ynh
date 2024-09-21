<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Dont-code Services untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/dont-code.svg)](https://ci-apps.yunohost.org/ci/apps/dont-code/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/dont-code.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/dont-code.maintain.svg)

[![Pasang Dont-code Services dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=dont-code)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Dont-code Services secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

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


**Versi terkirim:** 0.3.2~ynh7

**Demo:** <https://dont-code.net/apps.html>

## Tangkapan Layar

![Tangkapan Layar pada Dont-code Services](./doc/screenshots/ide.gif)
![Tangkapan Layar pada Dont-code Services](./doc/screenshots/previewer.gif)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://dont-code.net>
- Dokumentasi pengguna resmi: <https://dont-code.net/news.html>
- Dokumentasi admin resmi: <https://dont-code.net/developers.html>
- Depot kode aplikasi hulu: <https://github.com/dont-code>
- Gudang YunoHost: <https://apps.yunohost.org/app/dont-code>
- Laporkan bug: <https://github.com/YunoHost-Apps/dont-code_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
atau
sudo yunohost app upgrade dont-code -u https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
