import 'package:flutter/material.dart';

export 'login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[40],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.access_alarms, size: 90, color: Colors.indigo[800]),
          Text(
            'MEUS_HORARIOS',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.indigo[800],
            ),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                label: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.indigo[800],
                  ),
                )),
          ),
          TextField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                label: Text(
                  'SENHA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.indigo[800],
                  ),
                )),
            obscureText: true,
          ),
          Padding(padding: EdgeInsets.only(top: 24), child: ElevatedButton(child: Text('ENTRAR'), style: ElevatedButton.styleFrom(primary: Colors.indigo[800]), onPressed: () => Navigator.pushReplacementNamed(context, '/lista'))),
        ],
      ),
    );
  }
}
