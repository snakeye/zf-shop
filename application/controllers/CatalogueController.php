<?php

/**
 * Class CatalogueController
 */
class CatalogueController extends Zend_Controller_Action
{
    /**
     * Index action
     */
    public function indexAction()
    {
        $page = intval($this->getParam('page'));

        $products_table = new Db_Table_Products();

        $select = $products_table->selectProducts();

        $paginator = Zend_Paginator::factory($select);
        $paginator->setItemCountPerPage(4);
        $paginator->setCurrentPageNumber($page);

        if ($page > $paginator->count()) {
            throw new Zend_Controller_Action_Exception('Not found', 404);
        }

        $this->view->paginator = $paginator;
    }
}

