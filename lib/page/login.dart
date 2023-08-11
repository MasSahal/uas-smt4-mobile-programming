import 'package:flutter/material.dart';
import 'dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final List<Map<String, String>> users = [
    {'username': 'user1', 'password': '12345'},
    {'username': 'user2', 'password': 'password2'},
    // Tambahkan data user lainnya di sini
  ];

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String errorMessage = '';

  void _login() {
    String username = usernameController.text;
    String password = passwordController.text;

    bool isAuthenticated = false;
    for (var user in users) {
      if (user['username'] == username && user['password'] == password) {
        isAuthenticated = true;
        break;
      }
    }

    if (isAuthenticated) {
      setState(() {
        errorMessage = '';
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DashboardPage()),
      );
    } else {
      setState(() {
        errorMessage = 'Username atau password salah';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 228, 178, 1),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   iconTheme: const IconThemeData(
      //     color: Colors.black,
      //   ),
      // ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            Center(
              child: new Image.asset(
                'assets/dinkes_logo.png',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text(
                  "Selamat datang! Glad to see you, Again!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            //email
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F8F9),
                  border: Border.all(
                    color: const Color(0xFFE8ECF4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: TextFormField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      label: Text('Username'),
                      border: InputBorder.none,
                      hintText: 'Masukan username',
                      hintStyle: TextStyle(
                        color: Color(0xFF8391A1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            //password
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF7F8F9),
                  border: Border.all(
                    color: const Color(0xFFE8ECF4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      label: Text('Password'),
                      border: InputBorder.none,
                      hintText: 'Masukan password',
                      hintStyle: TextStyle(
                        color: Color(0xFF8391A1),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Color(0xFF8391A1),
                      ),
                    ),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                children: [
                  Text(
                    errorMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 5),
                  //   child: GestureDetector(
                  //     onTap: () {},
                  //     child: const Text(
                  //       "Forgot Password?",
                  //       style: TextStyle(
                  //         color: Color(0xFF6A707C),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            //forgot password
            const SizedBox(height: 25),
            //login button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: Color.fromRGBO(126, 170, 146, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      onPressed: () {
                        _login();
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don’t have an account? ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
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
