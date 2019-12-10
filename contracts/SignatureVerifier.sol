pragma solidity ^0.5.11;

import "./ClaimManager.sol";

contract SignatureVerifier is ClaimManager {
    function verifySignature(uint256 _topic, uint256 _scheme, address issuer, bytes memory _signature, bytes memory _data) public view returns (bool) {
        return _validSignature(_topic, _scheme, issuer, _signature, _data);
    }
}