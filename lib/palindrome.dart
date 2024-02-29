import 'package:flutter/material.dart';

class palindrome extends StatefulWidget {
  const palindrome({super.key});

  @override
  State<palindrome> createState() => _palindromeState();
}

class _palindromeState extends State<palindrome> {
  TextEditingController numberController = TextEditingController();
  bool isPalindrome = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: numberController,
              decoration: InputDecoration(
                labelText: 'Enter a number',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isPalindrome = checkPalindrome(numberController.text);
                });
              },
              child: Text('Check Palindrome'),
            ),
            SizedBox(height: 20),
            Text(
              isPalindrome ? 'Palindrome!' : 'Not a Palindrome.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool checkPalindrome(String number) {
    String reversed = number.split('').reversed.join('');
    return number == reversed;
  }
}
