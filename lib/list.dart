import 'package:flutter/material.dart';

class MyExpansion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
      itemCount: data.length,
      shrinkWrap: true,
    );
  }
}

List<String> avatar = <String>['A', 'B', 'C'];

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, this.avatar, [this.children = const <Entry>[]]);

  final String title;
  final String avatar;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'Chapter A',
    'A',
    <Entry>[
      Entry('Section A0', ''),
      Entry('Section A1', ''),
      Entry('Section A2', ''),
    ],
  ),
  Entry(
    'Chapter B',
    'B',
    <Entry>[
      Entry('Section B0', ''),
      Entry('Section B1', ''),
    ],
  ),
  Entry(
    'Chapter C',
    'C',
    <Entry>[
      Entry('Section C0', ''),
      Entry('Section C1', ''),
      Entry('Section C2', ''),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      leading: ExcludeSemantics(
        child: CircleAvatar(
          child: Text(
            root.avatar,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

void main() {
  runApp(MyExpansion());
}
