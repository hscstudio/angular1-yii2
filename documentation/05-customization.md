# Customization

To be continued... Plan is to add info about paging, upload file, security, authentication and more.

You're very welcome to contribute.

## Enhance User Interface

### Angular Animation

### Flash Message

### Angular Lazy Loader

## Customize RESTful API

### Versioning

### Customize URL

### Error Handling

## Authorization

## Handling File Upload

## Deploying Application
Before we deploy our application, we need do some things.

### Web Client
Read official guide for application production [click here](https://docs.angularjs.org/guide/production).
#### Disabling Debug Data
By default AngularJS attaches information about binding and scopes to DOM nodes, and adds CSS classes to data-bound elements, but we can disable this in production for a significant performance boost with:
```js
spaApp.config(['$compileProvider', function ($compileProvider) {
  $compileProvider.debugInfoEnabled(false);
}]);
```

#### 
### Web Service
Modify file [web/index.php](../web-service/web/index.php) in web-service, set Yii_DEBUG const to be `false`, and then YII_ENV to be `prod`
```php
defined('YII_DEBUG') or define('YII_DEBUG', false);
defined('YII_ENV') or define('YII_ENV', 'prod');
```

---

> [Back To Index](index.md) <br>
> [01. Introduction](01-introduction.md) <br> 
> [02. Preparation](02-preparation.md) <br>
> [03. Create Web Service](03-create-web-service.md) <br>
> [04. Create Web Client](04-create-web-client.md) <br>
> [05. Customization](05-customization.md) <br>
> [06. Conclusion](06-conclusion.md) <br>
