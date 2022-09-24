import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          _buildTitle(),
          const SizedBox(height: 40),
          _buildImage(),
          const SizedBox(height: 20),
          _buildEmail(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      "Sing In",
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildImage() {
    return Center(
      child: Image.asset(
        "assets/images/road.jpeg",
        fit: BoxFit.cover,
        height: 250,
        width: 250,
      ),
    );
  }

  Widget _buildEmail() {
    return const TextField(
      decoration: InputDecoration(
        labelText: 'Email',
        suffixStyle: TextStyle(color: Colors.white),
        hintText: "Email",
      ),
    );
  }
}
