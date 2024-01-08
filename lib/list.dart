import 'package:flutter/material.dart';

class Listt extends StatefulWidget {
  @override
  State<Listt> createState() => _ListtState();
}

class _ListtState extends State<Listt> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  void _addItem() {
    _items.insert(0, ('Item ${_items.length}')); //insert:eklemek
    _key.currentState!.insertItem(0,
        duration: Duration(seconds: 1)); //currentState :o anki durum
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(index, (_, animation) {
      return SizeTransition(
          sizeFactor: animation,
          child: Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text('Deleted'),
            ),
          ));
    }, duration: Duration(milliseconds: 300));
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed:
                _addItem,
              icon: Icon(Icons.add),
            ),
            Expanded(
                child: AnimatedList(
              key: _key,
              initialItemCount: 0,
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  sizeFactor: animation,
                  key: UniqueKey(),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        _items[index],
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            _removeItem(index);
                          }),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
