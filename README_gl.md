<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Dont-code Services para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/dont-code.svg)](https://dash.yunohost.org/appci/app/dont-code) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/dont-code.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/dont-code.maintain.svg)

[![Instalar Dont-code Services con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=dont-code)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Dont-code Services de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

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


**Versión proporcionada:** 0.3.2~ynh5

**Demo:** <https://dont-code.net/apps.html>

## Capturas de pantalla

![Captura de pantalla de Dont-code Services](./doc/screenshots/ide.gif)
![Captura de pantalla de Dont-code Services](./doc/screenshots/previewer.gif)

## Documentación e recursos

- Web oficial da app: <https://dont-code.net>
- Documentación oficial para usuarias: <https://dont-code.net/news.html>
- Documentación oficial para admin: <https://dont-code.net/developers.html>
- Repositorio de orixe do código: <https://github.com/dont-code>
- Tenda YunoHost: <https://apps.yunohost.org/app/dont-code>
- Informar dun problema: <https://github.com/YunoHost-Apps/dont-code_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
ou
sudo yunohost app upgrade dont-code -u https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
