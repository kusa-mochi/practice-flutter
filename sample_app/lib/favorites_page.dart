import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/my_app_state.dart';

class FavoritesPage extends StatefulWidget {
  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var favorites = appState.favorites;

    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            for (var pair in favorites) Text('${pair.first} ${pair.second}')
          ],
        ),
      ),
    );
  }
}
