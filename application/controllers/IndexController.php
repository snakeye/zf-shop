<?php

/**
 * Class IndexController
 */
class IndexController extends Zend_Controller_Action
{
    /**
     * Index action
     */
    public function indexAction()
    {
        $products_table = new Db_Table_Products();

        $this->view->products = $products_table->fetchTeasers();
    }
}

