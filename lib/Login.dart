import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final usuario = TextEditingController();
  final contra = TextEditingController();
  final tel = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("imagenes/fondo.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: tel,
                          decoration: InputDecoration(
                            hintText: 'Usuario',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.5),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.05,
                                vertical:
                                    MediaQuery.of(context).size.height * 0.02),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        TextFormField(
                          controller: tel,
                          decoration: InputDecoration(
                            hintText: 'Teléfono',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.5),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.05,
                                vertical:
                                    MediaQuery.of(context).size.height * 0.02),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        TextFormField(
                          controller: tel,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Contraseña',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.5),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.05,
                                vertical:
                                    MediaQuery.of(context).size.height * 0.02),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: Text("ingresar"),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: Text("Registrarse"),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                      ],
                    ))))
      ]),
    );
  }
}
