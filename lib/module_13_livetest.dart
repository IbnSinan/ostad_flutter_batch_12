import 'package:flutter/material.dart';

void main() {
  runApp(const MyPhonebookApp());
}

class MyPhonebookApp extends StatelessWidget {
  const MyPhonebookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: const PhonebookHomePage(),
    );
  }
}

class PhonebookHomePage extends StatelessWidget {
  const PhonebookHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Contact List",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "Phone",
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
                child: const Text("Add",style: TextStyle(color: Colors.white),),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView(
                children: const [
                  ContactCard(name: "Javad", phone: "01877-777777"),
                  ContactCard(name: "Ferdous", phone: "01757-777777"),
                  ContactCard(name: "Hasan", phone: "01745-777777"),
                  ContactCard(name: "Hasan", phone: "01745-777777"),
                  ContactCard(name: "Hasan", phone: "01745-777777"),
                  ContactCard(name: "Hasan", phone: "01745-777777"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String name;
  final String phone;

  const ContactCard({super.key, required this.name, required this.phone});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person, color: Colors.brown),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(phone),

      trailing: const Icon(Icons.call, color: Colors.blue),
    );
  }
}
