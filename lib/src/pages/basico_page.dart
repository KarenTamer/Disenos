import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget> [
          Image(
            image: NetworkImage('https://llandscapes-10674.kxcdn.com/wp-content/uploads/2017/04/1.jpg'),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: <Widget> [

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Text('Lago con un puente', style: estiloTitulo),
                        SizedBox(height: 7.0),
                        Text('Un lago en Alemania',style: estiloSubTitulo),
                      ],
                    ),
                  ),

                  Icon(Icons.star, color: Colors.red, size: 30.0),
                  Text('41',style: TextStyle(fontSize: 20.0) )

                ],
              ),
            )
        ],
      ),
    );
  }
}
