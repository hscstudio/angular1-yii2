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
            /*
			// This only optional force set response
			// because yii can autodetect header
			'contentNegotiator'=>[
                'formats'=>[
                    'text/html'=>\yii\web\Response::FORMAT_JSON
                ]
            ]
			*/
        ]);
    }
}
