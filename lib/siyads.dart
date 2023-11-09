import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drag and Drop List View'),
        ),
        body: DragAndDropListView(),
      ),
    );
  }
}

class DragAndDropListView extends StatefulWidget {
  @override
  _DragAndDropListViewState createState() => _DragAndDropListViewState();
}

class _DragAndDropListViewState extends State<DragAndDropListView> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
        children: items
            .map((item) => ListTile(
          key: Key(item),
          title: Text(item),
        ))
            .toList(),
        );
    }
}
