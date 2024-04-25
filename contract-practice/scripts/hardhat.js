const hardhat = require ('hardhat');

async function main() {
    const contract = await hardhat.ethers.getContractAt('Escrow', '0x1234567890123456789012345678901234567890'); 
    await contract.functions.releaseFunds('0x3456789012345678901234567890123456789012', '0x2345678901234567890123456789012345678901');
}

main();