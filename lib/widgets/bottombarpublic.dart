import 'package:flutter/material.dart';

class bottombarpublic extends StatelessWidget {
  const bottombarpublic({super.key});
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blueAccent,
      child: SizedBox(
        height: 50,
        child: Center(
          child: Text(
            '© 2024 Andino Hotel. Todos los derechos reservados.',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
      ),
    );
  }

}