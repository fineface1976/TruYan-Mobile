import 'package:web3dart/web3dart.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Web3Service {
  final Web3Client _client = Web3Client("https://bsc-dataseed.binance.org", Client());
  final FlutterSecureStorage _storage = FlutterSecureStorage();

  Future<void> mineTokens() async {
    // Replace with your mining contract ABI/address
    final contract = DeployedContract(
      ContractAbi.fromJson('[YOUR_CONTRACT_ABI]', 'TruYanMining'),
      EthereumAddress.fromHex('0xYourContractAddress'),
    );
    await _client.sendTransaction(
      await _credentials,
      Transaction.callContract(
        contract: contract,
        function: contract.function('mine'),
        parameters: [],
      ),
    );
  }

  Future<Credentials> get _credentials async {
    final privateKey = await _storage.read(key: 'privateKey');
    return EthPrivateKey.fromHex(privateKey!);
  }
}
