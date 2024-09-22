import 'package:flutter/material.dart';
import 'package:movie_app/models/person_model.dart';
import 'package:movie_app/pages/home/widgets/person_horizontal_item.dart';

class PersonsHorizontalList extends StatelessWidget {
  final ResultPerson resultPerson;
  const PersonsHorizontalList({super.key, required this.resultPerson});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: resultPerson.persons.length, // Número de pessoas
        itemBuilder: (context, index) {
          final person = resultPerson.persons[index]; // Cada pessoa da lista
          return PersonHorizontalItem(person: person); 
        },
      ),
    );
  }
}
