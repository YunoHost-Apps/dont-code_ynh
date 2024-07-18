<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Dont-code Services

[![集成程度](https://dash.yunohost.org/integration/dont-code.svg)](https://ci-apps.yunohost.org/ci/apps/dont-code/) ![工作状态](https://ci-apps.yunohost.org/ci/badges/dont-code.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/dont-code.maintain.svg)

[![使用 YunoHost 安装 Dont-code Services](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=dont-code)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Dont-code Services。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

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


**分发版本：** 0.3.2~ynh6

**演示：** <https://dont-code.net/apps.html>

## 截图

![Dont-code Services 的截图](./doc/screenshots/ide.gif)
![Dont-code Services 的截图](./doc/screenshots/previewer.gif)

## 文档与资源

- 官方应用网站： <https://dont-code.net>
- 官方用户文档： <https://dont-code.net/news.html>
- 官方管理文档： <https://dont-code.net/developers.html>
- 上游应用代码库： <https://github.com/dont-code>
- YunoHost 商店： <https://apps.yunohost.org/app/dont-code>
- 报告 bug： <https://github.com/YunoHost-Apps/dont-code_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
或
sudo yunohost app upgrade dont-code -u https://github.com/YunoHost-Apps/dont-code_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
