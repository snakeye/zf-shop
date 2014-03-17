<?php

/**
 * Class Zend_View_Helper_CartCount
 */
class Zend_View_Helper_CartCount extends Zend_View_Helper_Abstract
{
    public function cartCount()
    {
        $cart = new Zend_Session_Namespace('cart');

        if (!isset($cart->products) || empty($cart->products)) {
            return '';
        }

        return sprintf('<span class="cart-count">(%d)</span>', count($cart->products));
    }
}