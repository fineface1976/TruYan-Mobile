import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/mining_screen.dart';
import 'services/web3_service.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (context) => Web3Service(),
    child: MaterialApp(
      home: MiningScreen(),
    ),
  ),
);
