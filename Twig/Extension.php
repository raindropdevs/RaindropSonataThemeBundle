<?php

namespace Raindrop\SonataThemeBundle\Twig;

class Extension extends \Twig_Extension
{
    protected $theme;

    public function setTheme($theme) {
        $this->theme = $theme;
    }

    public function getGlobals() {
        return array(
            'raindrop_sonata_theme' => $this->theme
        );
    }

    public function getName() {
        return 'raindrop_theme_extension';
    }
}