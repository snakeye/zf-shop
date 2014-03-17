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
        $view->headScript()->appendFile('/js/bootstrap.js');

        // own scripts
        $view->headScript()->appendFile('/js/custom.js');
    }


}