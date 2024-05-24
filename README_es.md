<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Dont-code Services para Yunohost

[![Nivel de integración](https://dash.yunohost.org/integration/dont-code.svg)](https://dash.yunohost.org/appci/app/dont-code) ![Estado funcional](https://ci-apps.yunohost.org/ci/badges/dont-code.status.svg) ![Estado En Mantención](https://ci-apps.yunohost.org/ci/badges/dont-code.maintain.svg)

[![Instalar Dont-code Services con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=dont-code)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarDont-code Services rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

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


**Versión actual:** 0.3.2~ynh1

**Demo:** <https://dont-code.net/apps.html>

## Capturas

![Captura de Dont-code Services](./doc/screenshots/previewer.gif)
![Captura de Dont-code Services](./doc/screenshots/ide.gif)

## Documentaciones y recursos

- Sitio web oficial: <https://dont-code.net>
- Documentación usuario oficial: <https://dont-code.net/news.html>
- Documentación administrador oficial: <https://dont-code.net/developers.html>
- Repositorio del código fuente oficial de la aplicación : <https://github.com/dont-code>
- Catálogo YunoHost: <https://apps.yunohost.org/app/dont-code>
- Reportar un error: <https://github.com/YunoHost-Apps/dont-code_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [`branch testing`](https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
o
sudo yunohost app upgrade dont-code -u https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
