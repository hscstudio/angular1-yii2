## Prepare Your Weapons

### For Web Client
create a folder on the web - client web - accessible folder ( eg htdocs , public_html , www , etc. ) and then inside the folder again make four sub folder namely assets , controllers , models, views

This folder structure is a folder structure of our client web application. Why is structurally similar to the structure of Yii ? yes , I deliberately made ​​it resemble Yii where you can easily understand it . Interesting isn't it ?

Well , I will explain the function of each folder:
-	Assets folder for core angularJs and TwitterBootstrap, 
-	Controllers folder for javascript controller of angularJs
-	Models folders for services, connecting to Restful CRUD URL Yii 2.0
-	Views folder for partial page, is like views in Yii :)

You love with this arrangement ?

#### Download Twitter Bootstrap
Download this library from http://getbootstrap.com/, and extract to folder assets

Sehingga di dalam folder assets terdapat folder twitter-bootstrap dan kemudian didalam folder twitter bootstrap terdapat tiga folder lagi yaitu js, css dan font
+ assets
+ + twitter-bootstrap
+ + + js
+ + + css
+ + + font

### Technology Behind Scene

#### For web client app
 
This tutorial use 3 web standard language, they are HTML, JS, and CSS. 
- AngularJs 1.3 as Javascript Framework and 
- Twitter Bootstrap as CSS Framework.

#### For web service 
This tutorial use PHP and MySQL. 
- Yii Framework 2.0 as PHP Framework
