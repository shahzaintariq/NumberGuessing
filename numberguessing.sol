pragma solidity 0.5.11;

contract numberguess{
    uint8 public loserCounter;
    uint8 public winnerCounter;
    string public lastWinnerName;
    
    uint8[3] numArr;
    
    function YourNumber(uint8 _num1, uint8 _num2,uint8 _num3)public{
        numArr[0] = _num1;
        numArr[1] = _num2;
        numArr[2] = _num3;
    }
    
    function guess(uint8 _yournum,string memory _yourname) public returns(bool){
        for(uint8 i=0; i<numArr.length; i++){
            if(numArr[i] == _yournum){
                lastWinnerName = _yourname;
                winnerCounter++;
                return true;
            }
            }
            loserCounter++;
            return false;
    }
    function totalGuess() public view returns(uint){
        uint8 guess = loserCounter + winnerCounter;
        return guess;
    }
    
}
