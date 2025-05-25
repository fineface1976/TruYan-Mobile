import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/web3_service.dart';

class MiningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final web3Service = Provider.of<Web3Service>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Mine MZLx Tokens")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => web3Service.mineTokens(),
              child: Text("Mine 1.2 MZLx"),
            ),
          ],
        ),
      ),
    );
  }
}
