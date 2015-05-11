<?php
namespace app\controllers;

use yii\rest\ActiveController;

class BookController extends ActiveController
{
    public $modelClass = 'app\models\Book';
    
    public function behaviors()
    {
        return 
        \yii\helpers\ArrayHelper::merge(parent::behaviors(), [
            'corsFilter' => [
                'class' => \yii\filters\Cors::className(),
            ],
            'contentNegotiator'=>[
                'formats'=>[
                    'text/html'=>\yii\web\Response::FORMAT_JSON
                ]
            ]
        ]);
    }
}
