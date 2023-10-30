import 'package:basic_tutorial/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('HomeScreen')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Este es el body'),
              //TODO instrucciones
              //Declarar el espacio
              SizedBox(
                height: 800,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return const CustomContainer(
                      title: 'Hola fabian',
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
