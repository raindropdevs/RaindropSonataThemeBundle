<?php

namespace Raindrop\SonataThemeBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class RaindropSonataThemeBundle extends Bundle
{
    protected $parent;

    /**
     * @param string $parent
     */
    public function __construct($parent = null)
    {
        $this->parent = $parent;
    }

    /**
     * {@inheritdoc}
     */
    public function getParent()
    {
        return $this->parent;
    }
}
