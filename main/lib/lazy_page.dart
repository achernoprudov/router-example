import 'package:flutter/material.dart';

class LazyPage extends StatefulWidget {
  final WidgetLoader loader;

  const LazyPage({required super.key, required this.loader});

  @override
  State<LazyPage> createState() => _LazyPageState();
}

typedef WidgetLoader = Future<Widget> Function(BuildContext context);

class _LazyPageState extends State<LazyPage> {
  Widget? loadedPage;

  _LazyPageState();

  @override
  void initState() {
    super.initState();
    _loadPage();
  }

  @override
  Widget build(BuildContext context) {
    if (loadedPage != null) {
      return loadedPage!;
    }
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  void _loadPage() async {
    final loadedPage = await widget.loader(context);
    setState(() {
      this.loadedPage = loadedPage;
    });
  }
}
