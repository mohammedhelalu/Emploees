# Emploees

--------------------------------------
Employees.sol
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Employees{
     string fullName ;
   constructor(){
        fullName="mohammed helal";
      }

    function setEmployees(string memory name)public {
        fullName=name;
  }
     function getEmployees() public view returns(string memory name) {
         return fullName;
  }
}
------------------------------------------------------
2_initial_deploy.js
----
const Employees = artifacts.require("./Employees.sol");

module.exports = function (deployer) {
  deployer.deploy(Employees);
};

-------------------------------------------------------
npm install
truffle init
truffle develop
-----------------------------------------------
truffle(develop)>  migrate --comply-all --reset
--------------------------------------------
truffle(develop)> Employees. address
'0xB0771F9c6eE22E106D1a9bFc9068E71062Ce579b'
-------------------------------
truffle(develop)> Employees.transactionHash
'0x88db084a4bf4386a9908c099f52714d36c31027cd6b15b1ea00b727d571bccf1'
------------------------
truffle(develop)> web3.eth.getAccounts()
[
  '0x51d05f34055C11C14a2cC9E649EA68cCacD17034',
  '0xA88C924E0633650340d57989E43fF4923554EadB',
  '0xD7f8F0FA5398380e781036B15FCBb9cdD20355DB',
  '0x241c055aD5D4af5b16d438d88F1C7F6f236dae20',
  '0x5301B996561Ac73d0D2d5a519097E1d60c1cB7C0',
  '0xB7585f8095E4E41c7B6b4F4AF0829aCF2437A1C5',
  '0x8569Bf7f165c814533d5f8e91679941aE23BD9C4',
  '0x60446Cc901c8DCdC9fc35fA4f2D4B901238EF984',
  '0x669a97eb8e9f0546B78b3c92ac6d6383746d69e5',
  '0x3ACF6Cb69de49cc8Ee05cdFF47Ba3944b17D559B'
]
-------------------------------------
truffle(develop)> Employees.deployed().then(function(instance){app=instance;})
undefined
----------------------------------
app يمكنه الوصول لكل الفنكشن
truffle(develop)> app.getEmployees()
'mohammed helal'
----------------------
لو حبيت أغير الأسم مثلا لازم تقول له من أي حساب عشان المحاسبة
truffle(develop)> app.setEmployees("Ahmed Omar Walid",{from:'0x51d05f34055C11C14a2cC9E649EA68cCacD17034'})
{
  tx: '0xd614161afd70558b488d1fd90ecf2b0c3efe50386de93af564de6c4ef5a16344',
  receipt: {
    transactionHash: '0xd614161afd70558b488d1fd90ecf2b0c3efe50386de93af564de6c4ef5a16344',
    transactionIndex: 0,
    blockNumber: 2,
    blockHash: '0x7d09efd71b36cbd093328010285634754de98f5d3f2d9a71f3a2bcc36574ae5f',
    from: '0x51d05f34055c11c14a2cc9e649ea68ccacd17034',
    to: '0xb0771f9c6ee22e106d1a9bfc9068e71062ce579b',
    cumulativeGasUsed: 29650,
    gasUsed: 29650,
    contractAddress: null,
    logs: [],
    logsBloom: '0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',
    status: true,
    effectiveGasPrice: 3273305134,
    type: '0x2',
    rawLogs: []
  },
  logs: []
}
-------------------------------------------------
للتحقق 
truffle(develop)> app.getEmployees()
'Ahmed Omar Walid'
--------------------------------
للخروج
truffle(develop)> .exit
PS E:\test blockchain\tests\Employees> 
----------------------------------------
==================================

للربط مع جنش
PS E:\test blockchain\tests\Employees> truffle migrate --compile-all --reset --network farah
Compiling your contracts...
===========================
> Compiling .\contracts\Employees.sol
> Compilation warnings encountered:

    project:/contracts/Employees.sol:6:4: Warning: No visibility specified. Defaulting to "public".
   constructor(){
   ^ (Relevant source part starts here and spans across multiple lines).

> Artifacts written to E:\test blockchain\tests\Employees\build\contracts
> Compiled successfully using:
   - solc: 0.4.22+commit.4cb486ee.Emscripten.clang


Starting migrations...
======================
> Network name:    'farah'
> Network id:      5777
> Block gas limit: 6721975 (0x6691b7)


2_initial_deploy.js
===================

   Replacing 'Employees'
   ---------------------
   > transaction hash:    0x324855b1de11361852594d3fff41d97b035dcc4a31b2978521ec34032106f93a
   > Blocks: 0            Seconds: 0
   > contract address:    0x4d8966eE32f21ac2d46fc60D6E3f03D043f8c31e
   > block number:        1
   > block timestamp:     1661549568
   > account:             0xe93df46f512b65E64d139e5c121A519683755cAa
   > balance:             99.99530594
   > gas used:            234703 (0x394cf)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.00469406 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00469406 ETH

Summary
=======
> Total deployments:   1
> Final cost:          0.00469406 ETH

===================================
other terminal
PS E:\test blockchain\tests\Employees> truffle console --log
truffle(ganache)>
====================
41 Truffle framework & Web3js addresses , transaction, accounts
https://youtu.be/__Q5eqYzeJ4
first terminal

truffle(farah)> Employees.deployed().then(function(instance){app=instance;})
undefinedتم عمل الأوبحكت أب 
truffle(farah)> app.getEmployees()
'mohammed helal'اب يتحكم ويقدر يدخل  وياخذ جيت 
-----------------------------------------------------------------
truffle(farah)>  web3.eth.getAccounts()
[
  '0xe93df46f512b65E64d139e5c121A519683755cAa',
  '0x3368A5269eF0Fd70FdBC930c4fC81e3CD9B2D064',
  '0x0c04bb4875C6dB906a8ECeDAacD7dCFE86a64a3E',
  '0x0Dc773159a2aDB56AD2B5c8A30C12F03d38947b2',
  '0x912D382EDcd4B1cA98E1f646D3A4f186416ab918',
  '0x66c2f74dEB3c2314c3092167c66fFb19851195B4',
  '0x15938B0cdc347654Fbf0a096E705e597366CDadb',
  '0x5A35857F87926a26fB388c5DCc3E9e9AB29D07E1',
  '0x980dEa0648526DdF03CC40fE684A1943797Bda8a',
  '0xaa39d7a8738B9Ae576ecd808d788Ece344981615'
]
----------------------------------------------------------------------
truffle(farah)> app.setEmployees("hasan ahmed kamal",{from:'0xe93df46f512b65E64d139e5c121A519683755cAa'})
{
  tx: '0x66fb60d85e84f99a26a5b158f82400714b9a61ee770c8ba07076b6df5ede2551',
  receipt: {
    transactionHash: '0x66fb60d85e84f99a26a5b158f82400714b9a61ee770c8ba07076b6df5ede2551',        
    transactionIndex: 0,
    blockHash: '0x26ac2d49ae4e0fbab6d6951da7ed31c298572a127a7438a749163fdfa1719190',
    blockNumber: 2,
    from: '0xe93df46f512b65e64d139e5c121a519683755caa',
    to: '0x4d8966ee32f21ac2d46fc60d6e3f03d043f8c31e',
    gasUsed: 29062,
    cumulativeGasUsed: 29062,
    contractAddress: null,
    logs: [],
    status: true,
    logsBloom: '0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',
    rawLogs: []
  },
  logs: []
}
================================================
truffle(farah)> app.getEmployees()
'hasan ahmed kamal'
-----------------------------------------------------------
لو وضعت التكس في الكونسول سيهطينا بيانات التحويل
truffle(farah)> web3.eth.getTransaction("0xc358b787ee240af2a545fb8bf030a1066b4197637be84e8fd233c3edd6770037")
{
  hash: '0xc358b787ee240af2a545fb8bf030a1066b4197637be84e8fd233c3edd6770037',
  nonce: 2,
  blockHash: '0x9113c3623f0690d1ad85b13e1ec602bbf41176c004dcd4c8c197a569e3b12aac',
  blockNumber: 3,
  transactionIndex: 0,
  from: '0xe93df46f512b65E64d139e5c121A519683755cAa',
  to: null,
  value: '0',
  gas: '0x47a02',
  gasPrice: '20000000000',
  input: '0x608060405234801561001057600080fd5b506040805190810160405280600e81526020017f6d6f68616d6d65642068656c616c0000000000000000000000000000000000008152506000908051906020019061005c929190610062565b50610107565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f106100a357805160ff19168380011785556100d1565b828001600101855582156100d1579182015b828111156100d05782518255916020019190600101906100b5565b5b5090506100de91906100e2565b5090565b61010491905b808211156101005760008160009055506001016100e8565b5090565b90565b6102d7806101166000396000f30060806040526004361061004c576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff1680634abefa36146100515780635015b340146100e1575b600080fd5b34801561005d57600080fd5b5061006661014a565b6040518080602001828103825283818151815260200191508051906020019080838360005b838110156100a657808201518184015260208101905061008b565b50505050905090810190601f1680156100d35780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b3480156100ed57600080fd5b50610148600480360381019080803590602001908201803590602001908080601f01602080910402602001604051908101604052809392919081815260200183838082843782019150505050505091929192905050506101ec565b005b606060008054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156101e25780601f106101b7576101008083540402835291602001916101e2565b820191906000526020600020905b8154815290600101906020018083116101c557829003601f168201915b5050505050905090565b8060009080519060200190610202929190610206565b5050565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f1061024757805160ff1916838001178555610275565b82800160010185558215610275579182015b82811115610274578251825591602001919060010190610259565b5b5090506102829190610286565b5090565b6102a891905b808211156102a457600081600090555060010161028c565b5090565b905600a165627a7a723058200c1433d7dfe20a687db6f745f6220fd18af16f3bb5af2f6fdb5f0cbc83db1b510029',
  v: '0x25',
  r: '0xbce31eeb798fa74f3b1e92da3a3998edb752fd711830d4f32b6eacb01490d179',
  s: '0x5dfbef7327cdaaa1c3169a4498fa0f080286b5f88d7f3b98e3b1860465dd9504'
}
-----------------------------------------------------------
    from https://web3js.readthedocs.io/en/v1.7.5/web3-bzz.html     

truffle(farah)> web3.eth.getBalance('0xe93df46f512b65E64d139e5c121A519683755cAa')
'99990030640000000000'
----------------------------------------------------------------------
أذا خرجت وحبيت ترجع للكونسول جانش
>truffle console --network farah
------------------------------------------------------------------
 لتحويل أموال من حساب لحساب
web3.eth.sendTransaction(transactionObject [, callback])
truffle(farah)> web3.eth.sendTransaction({from:'0xe93df46f512b65E64d139e5c121A519683755cAa',to:'0x3368A5269eF0Fd70FdBC930c4fC81e3CD9B2D064',value:web3.utils.toWei('5', 'ether')})
------------
{
  transactionHash: '0x4fb9217141d1ca55d49b4729121ec49eb7e52d528161924346b9c56f99c8946a',
  transactionIndex: 0,
  blockHash: '0x2b9a07d2ece0c9e7eed6f7c27be6d31a4507bc953c4052c21d2d5f7c2549ddd1',
  blockNumber: 4,
  from: '0xe93df46f512b65e64d139e5c121a519683755caa',
  to: '0x3368a5269ef0fd70fdbc930c4fc81e3cd9b2d064',
  gasUsed: 21000,
  cumulativeGasUsed: 21000,
  contractAddress: null,
  logs: [],
  status: true,
  logsBloom: '0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
}
=====================================
truffle(farah)> web3.eth.getBalance('0xe93df46f512b65e64d139e5c121a519683755caa')
'94989610640000000000
==========================
truffle(farah)> web3.utils.fromWei('94989610640000000000',"ether")
'94.98961064'
==========================
=================================
===============================
========================
BookStore.sol
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract BookStore{
    address sender;
     string fullname ;
     string discription;
     uint price;
   
    function sellBook(string memory_fullname,string memory _discription, uint _price)public {
            sender=msg.sender;
            fullname= fullname;
            discription= _discription;
            price= _price;
   
  }
      function getBook()public view returns(
            address _sender,
            string memory _fullname,
            string memory _discription,
            uint _price
   ){
                return(sender,fullname,discription,price);
   }
}
=========================
3_initial_deploy_BookStore.js
---
const BookStore = artifacts.require("./BookStore.sol");

module.exports = function (deployer) {
  deployer.deploy(BookStore);
};

===============================
PS E:\test blockchain\tests\Employees> truffle migrate --network farah
PS E:\test blockchain\tests\Employees> truffle console --network farah
----------------------------------------------------------------PS E:\test blockchain\tests\Employees> truffle migrate --compile  --network farah

Compiling your contracts...
===========================
> Compiling .\contracts\BookStore.sol
> Compiling .\contracts\BookStore.sol
> Compiling .\contracts\Employees.sol
> Compilation warnings encountered:

    project:/contracts/Employees.sol:6:4: Warning: No visibility specified. Defaulting to "public". 
   constructor(){
   ^ (Relevant source part starts here and spans across multiple lines).

> Artifacts written to E:\test blockchain\tests\Employees\build\contracts
> Compiled successfully using:
   - solc: 0.4.22+commit.4cb486ee.Emscripten.clang


Starting migrations...
======================
> Network name:    'farah'
> Network id:      5777
> Block gas limit: 6721975 (0x6691b7)


2_initial_deploy.js
===================

   Replacing 'Employees'
   ---------------------
   > transaction hash:    0x17a9595c68a186f99812ada4e366e4fd91ac759046e348d810d7125e4457c333
   > Blocks: 0            Seconds: 0
   > contract address:    0xBaAf045ba88C637d9E0cab0D4AA9495E5f491e2b
   > block number:        1
   > block timestamp:     1661629846
   > account:             0xA02608788d12E52c2de03492be6283f41caF188B
   > balance:             99.99530594
   > gas used:            234703 (0x394cf)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.00469406 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00469406 ETH


3_initial_deploy_BookStore.js
=============================

   Replacing 'BookStore'
   ---------------------
   > transaction hash:    0x4ecfef83b7831a68602bdb5521fc7f578b2dc892f174817d5a7890d15809b83c
   > Blocks: 0            Seconds: 0
   > contract address:    0x596439D0bE05d1D2CBd079061602aEE5F50b6Cb6
   > block number:        2
   > block timestamp:     1661629847
   > account:             0xA02608788d12E52c2de03492be6283f41caF188B
   > balance:             99.98871306
   > gas used:            329644 (0x507ac)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.00659288 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00659288 ETH

Summary
=======
> Total deployments:   2
> Final cost:          0.01128694 ETH

==========================================
PS E:\test blockchain\tests\Employees> truffle console --network farah        
truffle(farah)>لأظهار الكونسول مع جنش
===============================
truffle(farah)> BookStore.address
'0x596439D0bE05d1D2CBd079061602aEE5F50b6Cb6'
============================
العودة الي ترافيل
truffle(farah)>.exit ---------------->الخروج من الأرتباط مع جنش
S E:\test blockchain\tests\Employees>
truffle migrate --compile-all --reset --network farah
S E:\test blockchain\tests\Employees> truffle develop
Connected to existing Truffle Develop session at http://127.0.0.1:9545/
truffle(develop)>
-----------------------------
make app
truffle(develop)> BookStore.deployed().then(function(instance){app=instance})
-----undefined
لعمل عملية بيع للكتب
truffle(develop)> app.sellBook("Ethereum developer","Book for everyone specially for biggners",web3.utils.toWei('3','ether'),{from:accounts[0]})

--
truffle(develop)> app.sellBook("Ethereum developer","Book for everyone specially for biggners",web3.utils.toWei('3','ether'),{from:accounts[0]})
{
  tx: '0xfdc9f376a26bfce806810f4b065f5fdd87a7f071c0fefd5b973f05d68e22a410',
  receipt: {
    transactionHash: '0xfdc9f376a26bfce806810f4b065f5fdd87a7f071c0fefd5b973f05d68e22a410',
    transactionIndex: 0,
    blockNumber: 3,
    blockHash: '0x9d08a04f32c839d8427c8f8d80e8cac38092dbcc99b04a4a5e7ee46294b712ed',
    from: '0x51d05f34055c11c14a2cc9e649ea68ccacd17034',
    to: '0x178c36746357c67d5b7bf431d2968c17c6b64d3a',
    cumulativeGasUsed: 22904,
    gasUsed: 22904,
    contractAddress: null,
    logs: [],
    logsBloom: '0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',
    status: true,
    effectiveGasPrice: 3177494737,
    type: '0x2',
    rawLogs: []
  },
  logs: []
}
------------------------------
أستقطع منه قيمة الجاز
}
truffle(develop)> web3.eth.getBalance(accounts[0])
'99999033659038320652'

-===================================
for test BookStore
-------------------------
const BookStore = artifacts.require("./BookStore.sol");

contract('BookStore',function(accounts){
var bookStoreInstance;
var account1 = web3.eth.getAccounts().then(
    function (params) {
        account1 = params[0];
    }
);
var fullname = "mohammed abd el ghany helal";    
var discription = "this is template";
var price = '0';

it("empty values",function(){
    return BookStore.deployed().then(function (instance){
        return instance.getBook();
    }).then(function(params){
        assert.equal(params[0],0x0,"empty sender");
        assert.equal(params[1],"","empty full name");
        assert.equal(params[2],"","empty discription");
        assert.equal(params[3].toNumber(),0,"zero price");
    })
});
it("sell Book on store",function(){
    return BookStore.deployed().then(function (instance){
        bookStoreInstance = instance;
        return bookStoreInstance.sellBook(
           fullname,discription, web3.utils.toWei(price,"ether"),{from:account1});
  
    }).then(function(){
       return bookStoreInstance.getBook();
    }).then(function(){
       
        assert.equal(params[0],account1,"sender"+account1);
        assert.equal(params[1],"fullname"," full name"+fullname);
        assert.equal(params[2],"discription","discription"+discription);
        assert.equal(params[3].web3.utils.toWei(price,"ether"),"price"+web3.utils.toWei(price,"ether"));
    }) ;
});
});
---------------------------------------------------------------------------------------------------
لعمل الأختبار
PS E:\test blockchain\tests\Employees> truffle test --network farah
Using network 'farah'.


Compiling your contracts...
===========================
> Compiling .\contracts\BookStore.sol
> Compiling .\contracts\Employees.sol
> Compilation warnings encountered:  

    project:/contracts/Employees.sol:6:4: Warning: No visibility specified. Defaulting to "public".
   constructor(){
   ^ (Relevant source part starts here and spans across multiple lines).

> Artifacts written to C:\Users\M\AppData\Local\Temp\test--10528-ZtAKsthrSatd
> Compiled successfully using:
   - solc: 0.4.22+commit.4cb486ee.Emscripten.clang


  Contract: BookStore
    ✔ empty values (213ms)
    1) sell Book on store
    > No events were emitted


  1 passing (3s)
  1 failing

  1) Contract: BookStore
       sell Book on store:
     ReferenceError: params is not defined
      at E:\test blockchain\tests\Employees\test\BookStoreTestPath.js:34:22
      at processTicksAndRejections (node:internal/process/task_queues:96:5)
---------------------------------------------------------
PS E:\test blockchain\tests\Employees> truffle migrate --compile-all --reset

Compiling your contracts...
===========================
> Compiling .\contracts\BookStore.sol
> Compiling .\contracts\Employees.sol
> Compilation warnings encountered:

    project:/contracts/Employees.sol:6:4: Warning: No visibility specified. Defaulting to "public".
   constructor(){
   ^ (Relevant source part starts here and spans across multiple lines).

> Artifacts written to E:\test blockchain\tests\Employees\build\contracts
> Compiled successfully using:
   - solc: 0.4.22+commit.4cb486ee.Emscripten.clang


Starting migrations...
======================
> Network name:    'ganache'
> Network id:      5777
> Block gas limit: 6721975 (0x6691b7)


2_initial_deploy.js
===================

   Replacing 'Employees'
   ---------------------
   > transaction hash:    0x565207f4a7c7f92ed3d0d7d574dace34bf93fee5c2dda8642ee298457fb26fb0
   > Blocks: 0            Seconds: 0
   > contract address:    0x75CefF02E17E485E80d798DB1961A92a20B4B097
   > block number:        16
   > block timestamp:     1661639723
   > account:             0xA02608788d12E52c2de03492be6283f41caF188B
   > balance:             99.92235806
   > gas used:            234703 (0x394cf)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.00469406 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00469406 ETH


3_initial_deploy_BookStore.js
=============================

   Replacing 'BookStore'
   ---------------------
   > transaction hash:    0x8985cdadace2224a650e3013d7119347e46cfdf99667ecf50c10d0f20daccc98
   > Blocks: 0            Seconds: 0
   > contract address:    0x8B50c312C7011e0259d5f0f71a16B98Ca208EC79
   > block number:        17
   > block timestamp:     1661639724
   > account:             0xA02608788d12E52c2de03492be6283f41caF188B
   > balance:             99.91576518
   > gas used:            329644 (0x507ac)
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.00659288 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00659288 ETH

Summary
=======
> Total deployments:   2
> Final cost:          0.01128694 ETH


PS E:\test blockchain\tests\Employees> 


======================================================انتهي




