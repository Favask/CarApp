import 'package:flutter/material.dart';
import 'package:githubcheckout2/presentation/home/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginScreen();
    // return Scaffold(
    //   body: SingleChildScrollView(
    //     physics: const AlwaysScrollableScrollPhysics(),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.only(top: 150.0),
    //           child: Center(
    //               child: SizedBox(
    //                   height: 150,
    //                   width: 150,
    //                   child: Image.network(
    //                       "https://media.istockphoto.com/id/522119064/photo/gold-picture-frame.jpg?s=612x612&w=0&k=20&c=g2KRu-W0rWjIi212_I3gFynNWp6ooK02U27Ai9sywJ0="))),
    //         ),
    //         Align(
    //             alignment: Alignment.center,
    //             child: Text("Login With Your Email & Password",
    //                 textAlign: TextAlign.center,
    //                 style: Theme.of(context)
    //                     .textTheme
    //                     .titleMedium
    //                     ?.copyWith(fontWeight: FontWeight.bold))),
    //         Padding(
    //           padding: const EdgeInsets.only(left: 8.0, top: 16),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 8.0),
    //                 child: Text("Email",
    //                     textAlign: TextAlign.start,
    //                     style: Theme.of(context).textTheme.titleMedium),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: TextFormField(
    //                   decoration: const InputDecoration(
    //                     counter: null,
    //                     label: Row(
    //                       children: [Icon(Icons.email_outlined), Padding(
    //                         padding: EdgeInsets.only(left: 2.0),
    //                         child: Text("Email"),
    //                       )],
    //                     ),
    //                     border: OutlineInputBorder(
    //                         borderRadius: BorderRadius.all(Radius.circular(10)),
    //                         gapPadding: 0),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.only(left: 8.0, top: 16),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 8.0),
    //                 child: Text("Password",
    //                     textAlign: TextAlign.start,
    //                     style: Theme.of(context).textTheme.titleMedium),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: TextFormField(
    //                   decoration: const InputDecoration(
    //                     counter: null,
    //                     label: Row(
    //                       children: [
    //                         Icon(Icons.email_outlined),
    //                         Padding(
    //                           padding: EdgeInsets.only(left: 2.0),
    //                           child: Text("Password"),
    //                         )
    //                       ],
    //                     ),
    //                     border: OutlineInputBorder(
    //                         borderRadius: BorderRadius.all(Radius.circular(10)),
    //                         gapPadding: 0),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Icon
            Center(
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.brown,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.vpn_key, // Replace with your app logo
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Login With Your Email & Password',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            // Email Text Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 16),
            // Password Text Field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 8),
            // Forgot Password
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Add Forgot Password Logic
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 24),
            // Login Button
            ElevatedButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) =>  Dashboard()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.brown, // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(double.infinity, 48),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            // Register Link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account?"),
                TextButton(
                  onPressed: () {
                    // Navigate to Register Page
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
