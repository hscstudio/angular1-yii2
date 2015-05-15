# Customization

To be continued... Plan is to add info about paging, upload file, security, authentication and more.

You're very welcome to contribute.

## Enhance User Interface

### Angular Animation
https://docs.angularjs.org/tutorial/step_12<br>
https://docs.angularjs.org/guide/animations<br>
https://docs.angularjs.org/api/ngAnimate<br>

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
#### Strict DI Mode
Using strict di mode in your production application will throw errors when a injectable function is not annotated explicitly. Strict di mode is intended to help you make sure that your code will work when minified. However, it also will force you to make sure that your injectable functions are explicitly annotated which will improve angular's performance when injecting dependencies in your injectable functions because it doesn't have to dynamically discover a function's dependencies. It is recommended to automate the explicit annotation via a tool like ng-annotate when you deploy to production (and enable strict di mode)

To enable strict di mode, you have two options:
```html
<div ng-app="spaApp" ng-strict-di>
  <!-- your app here -->
</div>
```
or
```js
angular.bootstrap(document, ['spaApp'], {
  strictDi: true
});
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
