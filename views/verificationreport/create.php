<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\VerificationReport */

$this->title = 'Create Verification Report';
$this->params['breadcrumbs'][] = ['label' => 'Verification Reports', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="verification-report-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
