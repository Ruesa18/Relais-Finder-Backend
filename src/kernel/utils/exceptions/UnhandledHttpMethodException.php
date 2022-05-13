<?php

namespace PHREAPI\kernel\utils\exceptions;

/**
 * Class UnhandledHttpMethodException
 *
 * @package PHREAPI\kernel\utils\exceptions
 * @codeCoverageIgnore
 */
class UnhandledHttpMethodException extends \Exception {

    public function __construct() {
        parent::__construct("The used HTTP-Method has sadly not been handled yet.");
    }
}
?>
