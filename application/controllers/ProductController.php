<?php

/**
 * Class ProductController
 */
class ProductController extends Zend_Controller_Action
{
    /**
     * Index action
     */
    public function indexAction()
    {
        $products_table = new Db_Table_Products();

        $product = $products_table->fetchProduct($this->getParam('sku'));
        if ($product == null) {
            throw new Zend_Controller_Action_Exception('Product not found', 404);
        }

        $this->view->product = $product;

        $this->view->products = $products_table->fetchTeasers(3, $product);
    }
}

