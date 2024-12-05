import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Center(
                  child: SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.network(
                          "https://media.istockphoto.com/id/522119064/photo/gold-picture-frame.jpg?s=612x612&w=0&k=20&c=g2KRu-W0rWjIi212_I3gFynNWp6ooK02U27Ai9sywJ0="))),
            ),
            Align(
                alignment: Alignment.center,
                child: Text("Login With Your Email & Password",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold))),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Email",
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        counter: null,
                        label: Row(
                          children: [Icon(Icons.email_outlined), Padding(
                            padding: EdgeInsets.only(left: 2.0),
                            child: Text("Email"),
                          )],
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gapPadding: 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Password",
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        counter: null,
                        label: Row(
                          children: [
                            Icon(Icons.email_outlined),
                            Padding(
                              padding: EdgeInsets.only(left: 2.0),
                              child: Text("Password"),
                            )
                          ],
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gapPadding: 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
