const { ethers } = require("hardhat");

async function main() {
    const MyToken = await ethers.getContractFactory("MyToken");
    const contract = await MyToken.deploy()
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