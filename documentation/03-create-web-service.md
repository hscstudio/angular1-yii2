## Create Web Service

Okay , we will make the application from the server side web service that is of course by using high performance PHP framework Yii 2.0. Yii 2.0 has full support restful which is important thing in making a web service API . Yii teach us about how to make a web service quickly and correctly , everything was magical .

### Create Database Structure
Create database "angular_spa" and create "book" table with following structure.<br>
![](images/dbstructure.png)<br>
or import this sql [angular_spa.sql](../web-service/angular_spa.sql)

Insert some data in this table, You can create other table but this tutorial only will give example book table.

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

### Create Models
Please generate class models from all the tables . You can use tools to menggeneratenya gii or make it manually. I will not explain to you how to make use gii on the assumption that you are already accustomed to using Yii.

This is [models/Book.php](../web-service/models/Book.php) 
```php
namespace app\models;
use Yii;

class Book extends \yii\db\ActiveRecord
{
    public static function tableName()
    {
        return 'book';
    }

    public function rules()
    {
        return [
            [['title', 'author', 'publisher', 'year'], 'required'],
            [['id', 'year'], 'integer'],            
            [['title'], 'string', 'max' => 255],
            [['description'], 'string'],
            [['author','publisher'], 'string', 'max' => 50]
        ];
    }
}
```

### Config Yii as Restful Application
If You very new comer in rest Yii 2, please read from this guide https://github.com/yiisoft/yii2/blob/master/docs/guide/rest-quick-start.md. Its good start, to learn and explore restful in Yii

#### Create Rest Controller
Although not able to use gii to generate CRUD Restful , but Yii has an easy and fun way, here magical.

First, create [BookController.php](../web-service/controllers/BookController.php)  in the folder controllers. 
 
```php
namespace app\controllers;

use yii\rest\ActiveController;

class BookController extends ActiveController
{
    # adjust the models
    public $modelClass = 'app\models\Book';
    
    public function behaviors()
    {
        return 
        \yii\helpers\ArrayHelper::merge(parent::behaviors(), [
            'corsFilter' => [
                'class' => \yii\filters\Cors::className(),
            ],
        ]);
    }
}
```
The controller class extends from yii\rest\ActiveController. By specifying modelClass as app\models\Book, the controller knows what model can be used for fetching and manipulating data.

Add behavior for CORS to grant access to third party code (ajax calls from external domain) to be JSON (optional). read be carefully http://www.yiiframework.com/doc-2.0/yii-filters-cors.html

If You have other model to be made controllersnya restfulnya then you have to create new controllers.

#### Configuring URL Rules
modify the configuration about the urlManager component in your application configuration in [web.php](../web-service/config/web.php) in the config folder. 

```php
'urlManager' => [
    'enablePrettyUrl' => true,
    'enableStrictParsing' => true,
    'showScriptName' => false,
    'rules' => [
        ['class' => 'yii\rest\UrlRule', 'controller' => 'book'],
    ],
]
```
The above configuration mainly adds a URL rule for the book controller so that the book data can be accessed and manipulated with pretty URLs and meaningful HTTP verbs. If You have more controllers, then You can add as array format
```php

    'rules' => [
        ['class' => 'yii\rest\UrlRule', 'controller' => ['book','user','employee','etc']],
    ],
```
If you are using Apache as a web server , then you need to add a [.htaccess](../web-service/web/.htaccess) file in the folder web-service/web, but if not (nginx) then you do not need to do it.

#### Enabling JSON Input
To let the API accept input data in JSON format, configure the parsers property of the request application component to use the yii\web\JsonParser for JSON input:
```php
'request' => [
    'parsers' => [
        'application/json' => 'yii\web\JsonParser',
    ]
]
```
> Info: The above configuration is optional. Without the above configuration, the API would only recognize application/x-www-form-urlencoded and multipart/form-data input formats.

> *** Done ***<br>
> [Back To Index](index.md) <br>
> [01. Introduction](01-introduction.md) <br> 
> [02. Preparation](02-preparation.md) <br>
> [03. Create Web Service](03-create-web-service.md) <br>
> [04. Create Web Client](04-create-web-client.md) <br>
> [05. Security](05-security.md) <br>
> [06. Conclusion](06-conclusion.md) <br>
