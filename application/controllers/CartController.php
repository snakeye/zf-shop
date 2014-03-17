<?php

/**
 * Class CartController
 */
class CartController extends Zend_Controller_Action
{
    /**
     * Index action
     */
    public function indexAction()
    {
        $cart = $this->getCart();

        $this->view->cart = $cart->products;
    }

    /**
     *
     */
    public function addAction()
    {
        $product = $this->getProduct();

        $cart = $this->getCart();

        if (isset($cart->products[$product->id])) {
            $cart->products[$product->id]['quantity']++;
        } else {
            $cart->products[$product->id] = array(
                'product' => $product,
                'quantity' => 1
            );
        }

        return $this->_helper->redirector('index');
    }

    /**
     *
     */
    public function removeAction()
    {
        $product = $this->getProduct();

        $cart = $this->getCart();

        if (isset($cart->products[$product->id]) && $cart->products[$product->id]['quantity'] > 1) {
            $cart->products[$product->id]['quantity']--;
        }

        return $this->_helper->redirector('index');
    }

    /**
     *
     */
    public function deleteAction()
    {
        $product = $this->getProduct();

        $cart = $this->getCart();

        if (isset($cart->products[$product->id])) {
            unset($cart->products[$product->id]);
        }

        return $this->_helper->redirector('index');
    }

    /**
     * @return null|Product
     * @throws Zend_Controller_Action_Exception
     */
    protected function getProduct()
    {
        $products_table = new Db_Table_Products();

        $product = $products_table->fetchProduct(intval($this->getParam('product')));
        if ($product == null) {
            throw new Zend_Controller_Action_Exception('Product not found', 404);
        }

        return $product;
    }

    /**
     * @return Zend_Session_Namespace
     */
    protected function getCart()
    {
        $cart = new Zend_Session_Namespace('cart');

        if (!isset($cart->products)) {
            $cart->products = array();
        }

        return $cart;
    }
}

