pragma solidity >=0.4.0;

contract loan
{
     
     uint public age;
     uint public loanamount;
     uint public netincome;
     uint public otherlibalities;
     uint constant minage=21;
     uint public workex;
     uint constant minworkex=3;
     uint public cibil;
     uint constant mincibil=650;
     uint public income;
     uint constant minincome=25000;
     uint public avaiableamount;
     string message = " ";
    
     bool public  eligible;
     
    function setloanamount(uint a) public 
    {
        loanamount = a;
    }
    function setage(uint b) public 
    {
        age = b;
    }
      function setworkex(uint d) public
    {
        workex = d;
    }
    function setincome(uint c) public
    {
        income = c;
    }
    function setcibil(uint e) public
    {
        cibil = e;
    }
    function setAnyOtherExpenditure(uint f) public
    {
        otherlibalities= f;
    }
    function determineNetIncome() public
    {
        netincome=income-otherlibalities;
        
    }
    function canloanbeapproved() public
    {
        avaiableamount= netincome * 1/2;
        if (avaiableamount <= loanamount)
        eligible = true;
        else eligible = false;
        
    }
    function determineEligibility() public
    {
        if (age >= minage && workex >= minworkex && income >= minincome && cibil >= mincibil) 
        eligible = true;
        else eligible = false;
        
    }
}
