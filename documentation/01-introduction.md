# Introduction

From this guide you'll learn how to create single page application (SPA) in minutes using AngularJs and Yii Framework 2.0.
The application will implement a Create Read Update Delete (CRUD) data processing. User interface of this application will
be implemented using AngularJs. Data will be provided by API created using Yii Framework 2.0.

## Structure

There will be two applications:

- Web Client Application. The one providing UI.
- Web Service Application. The one dealing with data.

> Note: For easier maintenance it is recommended that you develop your RESTful APIs as a separate application which
  is separated from both website and admin parts of the application.

## Technology Behind the Scenes

Since client and service are separated, technology stack used in each case varies.

### Web Client Application

![](images/htmljscss.png)<br>

For client application we use HTML, JS, and CSS. At least some knowledge of all three is mandatory to follow this tutorial. 

- AngularJs 1.3<br>
![](images/angularjs.png)
AngularJs is a popular JavaScript framework. It does not matter if you do not know too much about it yet. It is relatively
easy to undestand if you're familiar with JavaScript and Yii. If you've used jQuery before, forget about it for a while
since concepts of AngularJs are different.

- CSS Bootstrap 3<br>
![](images/twitter_bootstrap.png)<br>
Initially developed by Twitter team, CSS Bootstrap is widely used frontend UI framework. It is a collection of ready
to use JavaScript and CSS that allows us to design a beautiful user interface quickly.

### Web Service Application
 
For service part we'll use PHP and MySQL. As a PHP framework we'll use Yii Framework 2.0<br>
![](images/yii.png)<br>

---

> [Back To Index](index.md) <br>
> [01. Introduction](01-introduction.md) <br> 
> [02. Preparation](02-preparation.md) <br>
> [03. Create Web Service](03-create-web-service.md) <br>
> [04. Create Web Client](04-create-web-client.md) <br>
> [05. Customization](05-customization.md) <br>
> [06. Conclusion](06-conclusion.md) <br>
