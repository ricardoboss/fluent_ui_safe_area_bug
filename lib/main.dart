import 'package:fluent_ui/fluent_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      home: NavigationView(
        appBar: const NavigationAppBar(
          title: Text('Safe Area Bug'),
        ),
        pane: NavigationPane(
          items: [
            PaneItem(
              icon: const Icon(FluentIcons.home),
              title: const Text('Home'),
              body: ScaffoldPage.withPadding(
                content: const Center(
                  child: Text('Home'),
                ),
              ),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.settings),
              title: const Text('Settings'),
              body: ScaffoldPage.withPadding(
                content: const Center(
                  child: Text('Settings'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
