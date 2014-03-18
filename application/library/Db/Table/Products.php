<?php

/**
 * Class Db_Table_Products
 */
class Db_Table_Products extends Zend_Db_Table
{
    protected $_name = 'products';
    protected $_rowClass = 'Product';

    /**
     * Fetch single product
     *
     * @param string $sku
     * @return null|Zend_Db_Table_Row_Abstract
     */
    public function fetchProduct($sku)
    {
        $select = $this->select()->where('sku = ?', $sku);
        return $this->fetchRow($select);
    }

    /**
     * Fetch teasers for home page or related products
     *
     * @param int $count
     * @param Product $except
     * @return Zend_Db_Table_Rowset_Abstract
     */
    public function fetchTeasers($count = 3, $except = null)
    {
        $select = $this->select()->order('RAND()')->limit($count);

        if ($except != null) {
            $select->where('id <> ?', $except->id);
        }

        return $this->fetchAll($select);
    }

    /**
     * @return Zend_Db_Table_Select
     */
    public function selectProducts()
    {
        $select = $this->select();

        return $select;
    }
}