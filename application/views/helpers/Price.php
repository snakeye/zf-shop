<?php

/**
 * Class Price
 */
class Zend_View_Helper_Price extends Zend_View_Helper_Abstract
{
    public function price($value)
    {
        $currency = new Zend_Currency('de_DE', 'EUR');
        $currency->setValue($value);

        return $currency->toString();
    }
}