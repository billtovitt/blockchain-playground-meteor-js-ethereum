contract GuessNumber{
    //msg.sender
    //person in hashtable gets balance of sender
    // you can not accses hashmapping the same way as acsessing unit
    //
    uint8 number;

    event Deposit(address from, uint value);
    event SetNumber();

    function() {
        if (msg.value > 0)
            Deposit(msg.sender, msg.value);
    }

    function setNumber(uint8 givenNumber) {
        number = givenNumber;
        SetNumber();
    }

    function guessNumber(uint8 givenNumber) constant returns (bool) {
        return (givenNumber == number);
    }
}
