<?php
namespace App\Model\Table;

use Cake\ORM\Table;

/**
 * ArticlesTable
 * articles テーブルを表すModel　
 * ※ 1レコードを表す Entityとは異なっている点に注意すること.
 */
class ArticlesTable extends Table
{
    public function initialize(array $config)
    {
        $this->addBehavior('Timestamp');
    }
}
