# How To Create Single Page Application in minutes! <br> with AngularJs 1.3 and Yii 2.0
![](documentation/images/angularjsyii.png)

## Introduction

This is a demo and a tutorial showing how to develop an application using Yii 2.0 for creating REST API and then using it
from UI built with AngularJS.

Tutorial is [available here](documentation/index.md).<br>
Book is [available here](https://www.gitbook.com/book/hscstudio/angular1-yii2/details)

## Installing demo

In order to install demo clone this repository:

```
git clone https://github.com/hscstudio/angular1-yii2 angular1-yii2
cd angular1-yii2
```

Then import database [angular_spa.sql](web-service/angular_spa.sql).

After it's done run the following:

```
cd web-service
composer update --prefer-dist
```

Set database config in [web-service\config\db.php](web-service/config/db.php).

Set up two hosts in your webserver. One should point to `web-client`, aother to `web-service/web`. Then set `serviceBase`
variable in [web-client\app.js](web-client/app.js) to point to web-service URL.

## License

Free open source

## Changelog

- 0.1 (Alpha - 11/05/2015)
- 0.2 (Beta - 12/05/2015)
