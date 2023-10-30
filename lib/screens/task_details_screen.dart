import 'package:basic_tutorial/widgets/task_container/custom_row.dart';
import 'package:basic_tutorial/widgets/task_container/task_row.dart';
import 'package:flutter/material.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sacar la basura'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomRow(title: 'Creador:', data: 'Juan Perez'),
                const CustomRow(title: 'Encargado:', data: 'Maria Perez'),
                const CustomRow(title: 'Fecha de solicitud:', data: '10/10/23'),
                const CustomRow(title: 'Fecha de entrega:', data: '10/10/23'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtareas:',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '(14)',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  elevation: 10,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    height: 300,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 14,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.black)),
                          child: const TaskRow(
                              title: 'SubTarea:', data: 'Limpiar el baño'),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Comentarios:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                      'Hay muchos servicios en la web que crean texto aleatorio, una colección sin sentido de palabras aleatorias que simplemente parecen texto real. Individualmente, cada palabra significa algo, pero en conjunto se lee como herejía. '),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
