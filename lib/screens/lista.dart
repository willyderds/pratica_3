import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[40],
        appBar: AppBar(
          backgroundColor: Colors.indigo[800],
          title: Text('HORARIOS'),
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.indigo[800],
          onPressed: () => Navigator.pushNamed(context, '/cadastro'),
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (ctx, index) {
              return ListTile(
                leading: Icon(Icons.access_time_filled, color: Colors.indigo[800]),
                title: Text(
                  "COMPROMISSOS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[800],
                  ),
                ),
                subtitle: Text(
                  "HORA_EXATA",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[200],
                  ),
                ),
              );
            }));
  }
}
