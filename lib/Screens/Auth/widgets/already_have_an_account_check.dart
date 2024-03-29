import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? 'No tienes una cuenta?' : 'Ya tienes una cuenta?',
          style: TextStyle(
            color: Colors.black.withOpacity(0.6),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Registrarse' : 'Iniciar sesión',
            style: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
