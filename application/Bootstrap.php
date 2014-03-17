<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
    /**
     * Set internal encoding for PHP
     */
    protected function _initInternalEncoding()
    {
        mb_internal_encoding("UTF-8");
    }

    /**
     * Set application time zone
     */
    protected function _initTimezone()
    {
        date_default_timezone_set('Europe/Berlin');
    }

    /**
     * Initialize View Scripts
     */
    protected function _initViewScripts()
    {
        $this->bootstrap('View');
        $view = $this->getResource('View');

        // styles
        $view->headLink()->appendStylesheet('/css/style.css');

        // scripts
        $view->headScript()->prependFile('/js/jquery-1.10.2.min.js');
        $view->headScript()->appendFile('/js/bootstrap.min.js');
        $view->headScript()->appendFile('/js/jquery.infinitescroll.js');

        // own scripts
        $view->headScript()->appendFile('/js/custom.js');
    }

    /**
     * Initialize navigation
     */
    protected function _initNavigation()
    {
        $this->bootstrap('View');
        $view = $this->getResource('View');

        $container = new Zend_Navigation(array(
            array(
                'label' => 'Home',
                'controller' => 'index',
                'action' => 'index',
                'route' => 'default',
            ),
            array(
                'label' => 'Catalogue',
                'controller' => 'catalogue',
                'action' => 'index',
                'route' => 'default',
            ),
        ));

        $view->navigation($container);
    }

    /**
     * Initialize router
     */
    protected function _initRouter()
    {
        $router = Zend_Controller_Front::getInstance()->getRouter();

        // add product page route
        $router->addRoute('product', new Zend_Controller_Router_Route('product/:product', array(
            'controller' => 'product',
            'action' => 'index',
            'product' => 0,
        )));
    }
}