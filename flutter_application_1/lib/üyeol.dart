import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  N11Logo(),
                  SizedBox(height: 16.0),
                  AuthButtons(),
                  SizedBox(height: 16.0),
                  DiscountText(),
                  SizedBox(height: 16.0),
                  CouponText(),
                  SizedBox(height: 16.0),
                  NameSurnameFields(),
                  SizedBox(height: 16.0),
                  EmailField(),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CountryCodeField(),
                      SizedBox(width: 8.0),
                      PhoneNumberField(),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  VerificationText(),
                  SizedBox(height: 16.0),
                  PasswordField(),
                  SizedBox(height: 16.0),
                  GenderField(),
                  SizedBox(height: 16.0),
                  TermsAndConditions(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class N11Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      child: Image.asset(
        'assets/images/n112.png',
        width: 75.0,
      ),
    );
  }
}

class AuthButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 202, 200, 200),
          ),
          child: Text(
            'Giriş Yap',
            style: TextStyle(color: Colors.black),
          ),
        ),
        SizedBox(width: 20.0),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
          ),
          child: Text(
            'Üye Ol',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}

class DiscountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(left: 100.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 196, 156, 203),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Text(
        '75 TL İndirim Kazan',
        style: TextStyle(
          color: Colors.black,
          fontSize: 10.0,
        ),
      ),
    );
  }
}

class CouponText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(horizontal: 70.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 236, 195, 243),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Text(
        'Yeni üyelere özel 75 TL indirim kuponu!',
        style: TextStyle(
          color: Colors.white,
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class NameSurnameFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150.0,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Ad',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(width: 5.0),
        Container(
          width: 150.0,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Soyad',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}

class EmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'E-posta',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class CountryCodeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Ülke Kodu',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class PhoneNumberField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Telefon Numarası',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class VerificationText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      padding: EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 187, 156, 192),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error,
              color: Color.fromARGB(255, 81, 78, 81),
              size: 15.0,
            ),
            SizedBox(width: 6.0),
            Container(
              child: Text(
                'Numaranı doğrulaman için SMS ile kod göndereceğiz.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300.0,
          child: TextField(
            obscureText: _obscureText,
            decoration: InputDecoration(
              labelText: 'Şifre',
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildDot(),
            SizedBox(width: 4.0),
            _buildText('6-15 karakter'),
            SizedBox(width: 8.0),
            _buildDot(),
            SizedBox(width: 4.0),
            _buildText('En az 1 rakam'),
            SizedBox(width: 8.0),
            _buildDot(),
            SizedBox(width: 4.0),
            _buildText('En az 1 harf'),
          ],
        ),
      ],
    );
  }

  Widget _buildDot() {
    return Container(
      width: 6.0,
      height: 6.0,
      decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildText(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey, fontSize: 12.0),
    );
  }
}

class GenderSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GenderOption("Kadın"),
          SizedBox(width: 25.0),
          GenderOption("Erkek"),
        ],
      ),
    );
  }
}

class GenderOption extends StatelessWidget {
  final String gender;

  GenderOption(this.gender);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 8.0),
        child: Text(
          gender,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class GenderField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 3.0, right: 150.0),
          child: Text(
            'Cinsiyet (İsteğe Bağlı)',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GenderSelection(),
      ],
    );
  }
}

class TermsAndConditions extends StatefulWidget {
  @override
  _TermsAndConditionsState createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool _accepted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: _accepted,
            onChanged: (value) {
              setState(() {
                _accepted = value!;
              });
            },
          ),
          Text(
            'Üyelik sözleşmesi şartlarını okudum ve kabul ediyorum.',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
