// SPDX-License-Identifier: Unlicensed
pragma solidity 0.6.12;

contract Lottery {
    // Constructor - Set the Owner/Manager.
    address public manager;
    address payable[] public players;
    
    constructor () public {
        manager = msg.sender;
    }
    
    modifier onlyManager() {
        require(msg.sender == manager, "Only manager can call this function.");
        _;
    }
    
    event playerInvested(address player, uint amount);
    event selectedWinner(address winner, uint amount);
    
    // Invest Money.
    function invest() payable public {
        // Manager should not invest.
        require(msg.sender != manager, "Manager can't invest.");
        require(msg.value >= 0.1 ether, "Amount should be greater than 0.1 ether.");
        // I want to keep a track of who all invested.
        players.push(msg.sender);
        emit playerInvested(msg.sender, msg.value);
    }
    
    // Get Balance - Current Balance
    function getBalance() public view onlyManager returns(uint){
        require(msg.sender == manager, "Only manager can see the balance.");
        return address(this).balance;
    }
    
    function random() public view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.timestamp, block.difficulty, players.length)));
    }
    // Owner/Manager Click a function.
        // Select a player in Random.
        // Send the total money in the contract to the player.
    function selectWinner() public onlyManager {
        require(msg.sender == manager, "Only manager can run the lottery.");
        // Select a random number.
        // Use ORACLES to find a random number.
        uint randomNumber = random();
        // Module it with number of players.
        uint index = randomNumber % players.length;
        // Map the reminder to a index in the array.
        address payable winner = players[index];
        
        // Transfer all the money in the contract to the address in the array.}
        emit selectedWinner(winner, address(this).balance);
        winner.transfer(address(this).balance);
        
        // Empty array.
        players = new address payable[](0);
    }
}