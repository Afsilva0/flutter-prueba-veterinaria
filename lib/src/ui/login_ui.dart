import 'dart:math';

import 'package:demo/src/ui/sign_up_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: GoogleFonts.montserrat(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black87),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  filled: true))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.white30,
                offset: Offset(2, 4),
                blurRadius: 10,
                spreadRadius: 1)
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.blue[600], Colors.blueAccent[100]])),
      child: Text(
        'Iniciar sesión',
        style: GoogleFonts.portLligatSlab(
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('o'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Route _goSignUpTransition() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SignUp(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(_goSignUpTransition());
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '¿No tienes cuenta?',
              style: GoogleFonts.montserrat(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey[500]),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Registrate',
              style: GoogleFonts.montserrat(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.blueGrey[900]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Pet',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
          ),
        ),
        TextSpan(
          text: 'Soft',
          style: GoogleFonts.portLligatSlab(
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: Colors.lightBlue[900],
          ),
        ),
      ]),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Correo"),
        _entryField("Contraseña", isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: -height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: Container(
                  child: Transform.rotate(
                angle: -pi / 3.5,
                child: ClipPath(
                  child: Container(
                    height: MediaQuery.of(context).size.height * .6,
                    width: MediaQuery.of(context).size.width * 2.3,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.blueGrey[100],
                          Colors.lightBlue[50]
                        ])),
                  ),
                ),
              ))),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: height * .2),
                  _title(),
                  SizedBox(height: 50),
                  _emailPasswordWidget(),
                  SizedBox(height: 20),
                  _submitButton(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.bottomCenter,
                    child: Text('¿Olvidaste tu contraseña?',
                        style: GoogleFonts.montserrat(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black87)),
                  ),
                  _divider(),
                  _createAccountLabel(),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
