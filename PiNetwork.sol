pragma solidity ^0.5.0;

import "https://github.com/hiro612/Pi-Network-HECO/blob/master/Context.sol";
import "https://github.com/hiro612/Pi-Network-HECO/blob/master/ERC20.sol";
import "https://github.com/hiro612/Pi-Network-HECO/blob/master/ERC20Detailed.sol";

contract PiNetwork is Context, ERC20, ERC20Detailed {
    //Pi-Network： 代币的全名
    //Pi：代币的简写
    //18: 代币小数点位数，代币的最小单位， 5表示我们可以拥有 0.000000000000000001单位个代币
    constructor () public ERC20Detailed("Pi-Network", "Pi", 18) {
        //初始化币，并把所有的币都给部署智能合约的ETH钱包地址
        //21000000000：代币的总数量
        _mint(_msgSender(), 21000000000 * (10 ** uint256(decimals())));
    }
}
