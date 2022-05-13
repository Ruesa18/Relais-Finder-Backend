<?php
namespace PHREAPI\api;

class Routes extends \PHREAPI\kernel\utils\Routes {
    public function __construct() {
        parent::$endpoints = array(
            "/" => \PHREAPI\api\endpoints\RelaisEndpoint::class,
            "/relais" => \PHREAPI\api\endpoints\RelaisEndpoint::class
        );
    }
}
?>
