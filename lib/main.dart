import 'package:fluent_ui/fluent_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _idx = 0;
  bool _showAppBar = false;

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      home: NavigationView(
        appBar: _showAppBar
            ? const NavigationAppBar(
                title: Text('Safe Area Bug'),
              )
            : null,
        pane: NavigationPane(
          selected: _idx,
          onChanged: (i) => setState(() => _idx = i),
          items: [
            PaneItem(
              icon: const Icon(FluentIcons.home),
              title: const Text('Home'),
              body: ScaffoldPage.withPadding(
                content: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Show App Bar'),
                      Checkbox(
                        checked: _showAppBar,
                        onChanged: (_) =>
                            setState(() => _showAppBar = !_showAppBar),
                      ),
                    ],
                  ),
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
          footerItems: [
            PaneItem(
              icon: const Icon(FluentIcons.sync),
              title: const Text('Sync'),
              body: ScaffoldPage.scrollable(
                header: const PageHeader(
                  title: Text('Example header'),
                ),
                children: List.generate(
                  100,
                  (index) => Text('Item $index'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
