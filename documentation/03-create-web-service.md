## Create Web Service

Okay , we will make the application from the server side web service that is of course by using high performance PHP framework Yii 2.0. Yii 2.0 has full support restful which is important thing in making a web service API . Yii teach us about how to make a web service quickly and correctly , everything was magical .

### Create Database Structure
Create database "angular_spa" and create "book" table with following structure.<br>
![](images/dbstructure.png)<br>
or import this sql [angular_spa.sql](../web-service/angular_spa.sql)

### Config Database Connection
Open [config/db.php](../web-service/config/db.php) in root of Yii application (web service). Modify db configuration and adjust the settings on your server database

```php
return [
    'class' => 'yii\db\Connection',
    'dsn' => 'mysql:host=localhost;dbname=angular_spa',
    'username' => 'root',
    'password' => '',
    'charset' => 'utf8',
];
```

### Technology Behind Scene

#### For web client app
 
This tutorial use 3 web standard language, they are HTML, JS, and CSS. 
- AngularJs 1.3 as Javascript Framework and 
- Twitter Bootstrap as CSS Framework.

#### For web service 
This tutorial use PHP and MySQL. 
- Yii Framework 2.0 as PHP Framework

> *** Done ***<br>
> [Back To Index](index.md) <br>
> [01. Introduction](01-introduction.md) <br> 
> [02. Preparation](02-preparation.md) <br>
> [03. Create Web Service](03-create-web-service.md) <br>
> [04. Create Web Client](04-create-web-client.md) <br>
> [05. Security](05-security.md) <br>
> [06. Conclusion](06-conclusion.md) <br>
