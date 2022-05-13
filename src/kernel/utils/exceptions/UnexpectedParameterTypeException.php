<?php

namespace PHREAPI\kernel\utils\exceptions;

/**
 * Class UnexpectedParameterTypeException
 *
 * @package PHREAPI\kernel\utils\exceptions
 * @codeCoverageIgnore
 */
class UnexpectedParameterTypeException extends \Exception {

    public function __construct() {
        parent::__construct("A parameter was not of the expected type. Please check the code documentation.");
    }
}
?>
