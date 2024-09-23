import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'mi app',
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(), 
      );
  }
}

Widget cuerpo(){
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/53/67/02/53670256e1dc221b4815dc878ba395f2.jpg"),
      fit: BoxFit.cover
      )
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          nombre(),
          campoUsuario(),
          password(),
          const SizedBox(height: 15,),
          buttonEntry(),
        ],
      ),
      ),
  );
}


Widget nombre(){
  return const Text("Sign in" , style: TextStyle(color: Colors.white , fontSize: 35.0, fontWeight: FontWeight.bold),);
}

Widget campoUsuario(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 5),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget password(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 5),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget buttonEntry(){
  return TextButton(
    style: TextButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 100 , vertical: 10),
    ),
    onPressed: (){}, 
    child: const Text("Enter" , style: TextStyle(fontSize: 25),),
    );
}