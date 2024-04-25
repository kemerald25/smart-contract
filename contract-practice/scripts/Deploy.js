const { ethers } = require("hardhat");

async function main() {
    const MyContract = await ethers.getContractFactory("MyContract");
    const name = "DecToken";
    const symbol = "DTK";
    const decimals = 18;
    const contract = await MyContract.deploy(name, symbol, decimals)
    // my_contract.getAddress()
    //     .then((address) => {
    //         console.log("Contract deployed to address: ", address);
    //     });

    console.log("Contract deployed to address", contract.address);
}




main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });