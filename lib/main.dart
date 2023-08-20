import 'package:flutter/material.dart';
import 'package:git_hub_searcher/presentation/pages/search_page.dart';

import 'injection.dart';

Future<void> main() async {
  final injectionContainer = await injection(MaterialApp(home: SearchPage()));
  runApp(injectionContainer);
}
