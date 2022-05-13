<?php
namespace PHREAPI\api\endpoints;

use PHREAPI\kernel\utils\output\AbstractResponse;
use PHREAPI\kernel\utils\output\JSONResponse;
use PHREAPI\kernel\utils\interfaces\database\MySQL;
use PHREAPI\kernel\utils\ConfigLoader;

class RelaisEndpoint extends Endpoint implements Endpointable {
    private $data;

    public function index($request): AbstractResponse {
        $mysql = new MySQL();
        $data = $mysql->execute("SELECT * FROM relais")->asObject("PHREAPI\api\model\RelaisModel");
        return new JSONResponse(200, !$data ? [] : $data);
    }

    public function create($request): AbstractResponse {}

    public function update($request): AbstractResponse {}

    public function patch($request): AbstractResponse {}

    public function option($request): AbstractResponse {}

    public function delete($request): AbstractResponse {}

    public function asAssoc() {}

    public function asObject() {}
}

?>
