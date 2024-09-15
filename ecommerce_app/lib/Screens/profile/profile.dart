import 'package:ecommerce_app/Screens/Login/login_view.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            // Profile Picture and Name
            const CircleAvatar(
              radius: 50,
              backgroundImage:
                  AssetImage('assests/img2.jpg'), // Replace with your image
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 16,
                  child: Icon(
                    Icons.edit,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Jawwad Ahmed',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Profile Options
            Expanded(
              child: ListView(
                children: [
                  const ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Your Profile'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  const Divider(),
                  const ListTile(
                    leading: Icon(Icons.payment),
                    title: Text('Payment Methods'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  const Divider(),
                  const ListTile(
                    leading: Icon(Icons.shopping_bag),
                    title: Text('My Orders'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  const Divider(),
                  const ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  const Divider(),
                  const ListTile(
                    leading: Icon(Icons.help),
                    title: Text('Help Center'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  const Divider(),
                  const ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('Privacy Policy'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  const Divider(),
                  const ListTile(
                    leading: Icon(Icons.person_add),
                    title: Text('Invite Friends'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text('Logout'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginView()),
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
