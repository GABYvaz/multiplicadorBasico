import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

@override
State<CounterScreen> createState() => _CounterScreenState();
}
class _CounterScreenState extends State<CounterScreen> {
  int contador =0;
  int contador2 =0;
  int contador3 =0;
 final TextStyle estiloTexto = const TextStyle(
    fontSize: 35,
    color: Color.fromARGB(232, 86, 38, 75),
    fontWeight: FontWeight.bold, 
      );
  void incrementar(){
    contador++;
    setState(() {});
  }
  void decrementar(){
    contador--;
    setState(() {});
  }
  void reiniciar(){
    contador=0;
    setState(() {});
  }
  void incrementarcontador2(){
    contador2++;
    setState(() {});
  }
  void decrementarcontador2(){
    contador2--;
    setState(() {});
  }
  void reiniciarcontador2(){
    contador2=0;
    setState(() {});
  }
  void resultado(){
    contador3=contador2*contador;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar:  AppBar( //Barra de arriba de la app
        title: const Text('Multiplicador Basico'),
        centerTitle: true, //Centra el texto de la barra 
        elevation: 100, //sombra de la barra 
        backgroundColor: const Color.fromARGB(230, 230, 145, 230),
      ),
      
      backgroundColor: const Color.fromARGB(241, 232, 128, 200),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //agarra la columna y la centra toda
          children: [
             Text(
              'Numero 1',
              style: estiloTexto,
              ),
            Text('$contador',
            style: estiloTexto,
            ),
            Text(
              'Numero 2',
              style: estiloTexto,
              ),
            Text('$contador2',
            style: estiloTexto,
            ),
             Text('RESULTADO',
            style: estiloTexto,
            ),
            Text('$contador3',
            style: estiloTexto
            ),
          ],

        ),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     floatingActionButton: CustomFloatingActionButton(
      decrease: decrementar, 
     increase: incrementar, 
     reset: reiniciar,
     equals: resultado,
      decreasecontador2: decrementarcontador2, 
     increasecontador2: incrementarcontador2, 
     resetcontador2: reiniciarcontador2,
     //equals: resultado,
     )
      );
    } 
  }

class CustomFloatingActionButton extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;
  final Function equals;
  final Function increasecontador2;
  final Function decreasecontador2;
  final Function resetcontador2;
  
  const CustomFloatingActionButton({
    super.key, 
    required this.increase, 
    required this.decrease, 
    required this.reset,
    required this.equals,
    required this.increasecontador2, 
    required this.decreasecontador2, 
    required this.resetcontador2,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton( //Widget y propiedad del boton
         onPressed:() => decrease(),
           backgroundColor: const Color.fromARGB(255, 237, 152, 185),
           foregroundColor: const Color.fromARGB(255, 250, 15, 191),
           child: const Icon(Icons.exposure_minus_1),
           ),
           FloatingActionButton( //Widget y propiedad del boton
         onPressed: () => reset(),
           backgroundColor: const Color.fromARGB(255, 237, 152, 185),
           foregroundColor: const Color.fromARGB(255, 250, 15, 191),
           child: const Icon(Icons.restart_alt),
           ),
           FloatingActionButton( //Widget y propiedad del boton
         onPressed:() => increase(),
           backgroundColor: const Color.fromARGB(255, 237, 152, 185),
           foregroundColor: const Color.fromARGB(255, 250, 15, 191),
           child: const Icon(Icons.exposure_plus_1),
           ),
           FloatingActionButton( //Widget y propiedad del boton
         onPressed:() => equals(),
           backgroundColor: const Color.fromARGB(255, 181, 119, 187),
           foregroundColor: const Color.fromARGB(255, 170, 50, 162),
           child: const Icon(Icons.read_more),
           ),
            FloatingActionButton( //Widget y propiedad del boton
         onPressed:() => increasecontador2(),
           backgroundColor: const Color.fromARGB(255, 250, 15, 191),
           foregroundColor: const Color.fromARGB(255, 237, 152, 185),
           child: const Icon(Icons.exposure_minus_1),
           ),
           FloatingActionButton( //Widget y propiedad del boton
         onPressed: () => resetcontador2(),
           backgroundColor: const Color.fromARGB(255, 250, 15, 191),
           foregroundColor: const Color.fromARGB(255, 237, 152, 185),
           child: const Icon(Icons.restart_alt),
           ),
           FloatingActionButton( //Widget y propiedad del boton
         onPressed:() => increasecontador2(),
           backgroundColor: const Color.fromARGB(255, 250, 15, 191),
           foregroundColor: const Color.fromARGB(255, 237, 152, 185),
           child: const Icon(Icons.exposure_plus_1),
           ),
          
      ],
    );
  }
}   
