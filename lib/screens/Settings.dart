import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

final store = GetStorage();

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final formKey = GlobalKey<FormState>();
  final String? serverIp = store.read('serverIp');
  final String? serverPort = store.read('serverPort');
  final String? asteroidsPort = store.read('asteroidsPort');
  final String? pacmanPort = store.read('pacmanPort');
  final String? snakePort = store.read('snakePort');
  final String? pongPort = store.read('pongPort');

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Color(0xff161616),
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return orientation == Orientation.portrait
                ? portraiMode(screenSize, context)
                : landscapeMode(screenSize, context);
          },
        ),
      ),
    );
  }

  // Layout for portrait mode
  // "screenSize" is used to calculate widgets sizes based on screen size
  // "context" is used for pushing Navigator
  Widget portraiMode(Size screenSize, BuildContext context) {
    return Container(
      child: Center(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(screenSize.width * 0.1),
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
                  child: TextFormField(
                    style: TextStyle(color: Color(0xFF00FF05)),
                    initialValue: serverIp,
                    decoration: InputDecoration(
                      labelText: 'Server IP',
                      labelStyle: TextStyle(color: Color(0xFF00FF05)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                        width: screenSize.height * 0.003,
                      )),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: screenSize.height * 0.003,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: screenSize.height * 0.003,
                        ),
                      ),
                    ),
                    onSaved: (input) => store.write('serverIp', input),
                    validator: (input) =>
                        input?.length == 0 ? 'Server ip is required' : null,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
                  child: TextFormField(
                    style: TextStyle(color: Color(0xFF00FF05)),
                    initialValue: serverPort,
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                        width: screenSize.height * 0.003,
                      )),
                      labelText: 'Server Port',
                      labelStyle: TextStyle(color: Color(0xFF00FF05)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: screenSize.height * 0.003,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: screenSize.height * 0.003,
                        ),
                      ),
                    ),
                    onSaved: (input) => store.write('serverPort', input),
                    validator: (input) =>
                        input?.length == 0 ? 'Server port is required' : null,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
                  child: TextFormField(
                    style: TextStyle(color: Color(0xFF00FF05)),
                    initialValue: asteroidsPort,
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                        width: screenSize.height * 0.003,
                      )),
                      labelText: 'Asteroids Port',
                      labelStyle: TextStyle(color: Color(0xFF00FF05)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: screenSize.height * 0.003,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: screenSize.height * 0.003,
                        ),
                      ),
                    ),
                    onSaved: (input) => store.write('asteroidsPort', input),
                    validator: (input) => input?.length == 0
                        ? 'Asteroids port is required'
                        : null,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
                  child: TextFormField(
                    style: TextStyle(color: Color(0xFF00FF05)),
                    initialValue: pacmanPort,
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                        width: screenSize.height * 0.003,
                      )),
                      labelText: 'Pacman Port',
                      labelStyle: TextStyle(color: Color(0xFF00FF05)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: screenSize.height * 0.003,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: screenSize.height * 0.003,
                        ),
                      ),
                    ),
                    onSaved: (input) => store.write('pacmanPort', input),
                    validator: (input) =>
                        input?.length == 0 ? 'Pacman port is required' : null,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
                  child: TextFormField(
                    style: TextStyle(color: Color(0xFF00FF05)),
                    initialValue: snakePort,
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                        width: screenSize.height * 0.003,
                      )),
                      labelText: 'Snake Port',
                      labelStyle: TextStyle(color: Color(0xFF00FF05)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: screenSize.height * 0.003,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: screenSize.height * 0.003,
                        ),
                      ),
                    ),
                    onSaved: (input) => store.write('snakePort', input),
                    validator: (input) =>
                        input?.length == 0 ? 'Snake port is required' : null,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
                  child: TextFormField(
                    style: TextStyle(color: Color(0xFF00FF05)),
                    initialValue: pongPort,
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                        width: screenSize.height * 0.003,
                      )),
                      labelText: 'Pong Port',
                      labelStyle: TextStyle(color: Color(0xFF00FF05)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: screenSize.height * 0.003,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: screenSize.height * 0.003,
                        ),
                      ),
                    ),
                    onSaved: (input) => store.write('pongPort', input),
                    validator: (input) =>
                        input?.length == 0 ? 'Pong port is required' : null,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
                  child: GestureDetector(
                    onTap: () => _save(context),
                    child: Padding(
                      padding: EdgeInsets.all(screenSize.height * 0.05),
                      child: Container(
                        height: screenSize.height * 0.05,
                        child: Image.asset(
                          'assets/saveBtn.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Layout for landscape mode
  // "screenSize" is used to calculate widgets sizes based on screen size
  // "context" is used for pushing Navigator
  Widget landscapeMode(Size screenSize, BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Center(
          child: Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.all(screenSize.height * 0.1),
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
                    child: TextFormField(
                      initialValue: serverIp,
                      style: TextStyle(color: Color(0xFF00FF05)),
                      decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.red,
                          width: screenSize.height * 0.003,
                        )),
                        labelText: 'Server IP',
                        labelStyle: TextStyle(color: Color(0xFF00FF05)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF05),
                            width: screenSize.height * 0.003,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF05),
                            width: screenSize.height * 0.003,
                          ),
                        ),
                      ),
                      onSaved: (input) => store.write('serverIp', input),
                      validator: (input) =>
                          input?.length == 0 ? 'Server ip is required' : null,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
                    child: TextFormField(
                      style: TextStyle(color: Color(0xFF00FF05)),
                      initialValue: serverPort,
                      decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.red,
                          width: screenSize.height * 0.003,
                        )),
                        labelText: 'Server Port',
                        labelStyle: TextStyle(color: Color(0xFF00FF05)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF05),
                            width: screenSize.height * 0.003,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF05),
                            width: screenSize.height * 0.003,
                          ),
                        ),
                      ),
                      onSaved: (input) => store.write('serverPort', input),
                      validator: (input) =>
                          input?.length == 0 ? 'Server port is required' : null,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
                    child: TextFormField(
                      style: TextStyle(color: Color(0xFF00FF05)),
                      initialValue: asteroidsPort,
                      decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.red,
                          width: screenSize.height * 0.003,
                        )),
                        labelText: 'Asteroids Port',
                        labelStyle: TextStyle(color: Color(0xFF00FF05)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF05),
                            width: screenSize.height * 0.003,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF05),
                            width: screenSize.height * 0.003,
                          ),
                        ),
                      ),
                      onSaved: (input) => store.write('asteroidsPort', input),
                      validator: (input) => input?.length == 0
                          ? 'Asteroids port is required'
                          : null,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
                    child: TextFormField(
                      style: TextStyle(color: Color(0xFF00FF05)),
                      initialValue: pacmanPort,
                      decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.red,
                          width: screenSize.height * 0.003,
                        )),
                        labelText: 'Pacman Port',
                        labelStyle: TextStyle(color: Color(0xFF00FF05)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF05),
                            width: screenSize.height * 0.003,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF05),
                            width: screenSize.height * 0.003,
                          ),
                        ),
                      ),
                      onSaved: (input) => store.write('pacmanPort', input),
                      validator: (input) =>
                          input?.length == 0 ? 'Pacman port is required' : null,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
                    child: TextFormField(
                      style: TextStyle(color: Color(0xFF00FF05)),
                      initialValue: snakePort,
                      decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.red,
                          width: screenSize.height * 0.003,
                        )),
                        labelText: 'Snake Port',
                        labelStyle: TextStyle(color: Color(0xFF00FF05)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF05),
                            width: screenSize.height * 0.003,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF05),
                            width: screenSize.height * 0.003,
                          ),
                        ),
                      ),
                      onSaved: (input) => store.write('snakePort', input),
                      validator: (input) =>
                          input?.length == 0 ? 'Snake port is required' : null,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
                    child: TextFormField(
                      style: TextStyle(color: Color(0xFF00FF05)),
                      initialValue: pongPort,
                      decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.red,
                          width: screenSize.height * 0.003,
                        )),
                        labelText: 'Pong Port',
                        labelStyle: TextStyle(color: Color(0xFF00FF05)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF05),
                            width: screenSize.height * 0.003,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF00FF05),
                            width: screenSize.height * 0.003,
                          ),
                        ),
                      ),
                      onSaved: (input) => store.write('pongPort', input),
                      validator: (input) =>
                          input?.length == 0 ? 'Pong port is required' : null,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenSize.width * 0.01),
                    child: GestureDetector(
                      onTap: () => _save(context),
                      child: Padding(
                        padding: EdgeInsets.all(screenSize.height * 0.05),
                        child: Container(
                          height: screenSize.height * 0.07,
                          child: Image.asset(
                            'assets/saveBtn.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _save(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      Navigator.pop(context);
    }
  }
}
