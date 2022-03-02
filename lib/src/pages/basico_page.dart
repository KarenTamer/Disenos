import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget> [

          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
         

        ],
      ),
    );
  }

  Widget _crearImagen()=> Image(image: NetworkImage('https://llandscapes-10674.kxcdn.com/wp-content/uploads/2017/04/1.jpg'));
  
  Widget _crearTitulo()=> Container(
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
            );

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget> [
        _accion( Icons.call, 'Call'),
        _accion( Icons.near_me,'ROUTE'),
        _accion( Icons.share, 'Share'),
      ],
        
    );
  }

  Widget _accion(IconData icon,String texto){
    return Column(
          children: <Widget> [
            Icon(icon, color: Colors.blue, size: 40.0),
            SizedBox(height: 5.0),
            Text(texto, style:TextStyle(fontSize: 15.0, color: Colors.blue)),
          ],
        );
      
  }

Widget _crearTexto(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
    child: Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vel fringilla velit. Ut volutpat tellus magna, eu tempus mauris pellentesque nec. Morbi laoreet quis eros vitae ultrices. Nulla facilisi. Morbi auctor quam nunc, nec elementum tortor rutrum eu. Phasellus rutrum at felis et ultrices. Suspendisse sed porttitor augue, sed tincidunt purus. Nullam a tellus mauris. Duis facilisis pulvinar nisl, at venenatis enim. Pellentesque ut tellus vitae elit mattis lacinia.',
      textAlign: TextAlign.justify,
    ),
  );
}

}
