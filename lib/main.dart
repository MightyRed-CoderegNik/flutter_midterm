import 'package:flutter/material.dart';

void main() {
  runApp(MyMidtermExamApp());
}

class MyMidtermExamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nikko MidtermExam',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  final List<String> items = [
    'Victor',
    'Jandexter',
    'Nean',
    'Angela',
    'Evo',
    'France',
    'Benito',
    'Joana',
    'Ivy',
    'Quiboloy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nikko_MidtermExam')
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemCard(
            itemName: items[index],
          );
        },
      ),
    );
  }
}

class ItemCard extends StatefulWidget {
  final String itemName;

  ItemCard({required this.itemName});

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isAdded ? Colors.green[100] : Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text(widget.itemName),
              ),
            ),
            TextButton(
              onPressed: () {
                print('Details of ${widget.itemName}');
              },
              child: Text('Details'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isAdded = !isAdded;
                });
              },
              child: Text(isAdded ? 'Added' : 'Add'),
            ),
          ],
        ),
      ),
    );
  }
}


