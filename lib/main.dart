import 'package:flutter/material.dart';
import 'style.dart';
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(  
          textTheme: TextTheme(headline6: AppBarTextStyle)
        ),
        textTheme: TextTheme(
          headline6: TitleTextStyle,
          bodyText2: Body1TextStyle,
        )
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paul Ogolla'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: 480.0,
        child: ListView(
          children: [
            ImageBanner("assets/images/banner.jpg"),
            TextSection('About Me', 'I am a Full-stack Software Engineer and I can help you build a feature, website or mobile app.'),
            TextSection('Get in Touch', 'paul.zay@outlook.com'),
            TextSection('Hire Me', 'I am looking for a new role'),
          ],
        )
      )
    );
  }
}

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;

  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Text(_title, style: Theme.of(context).textTheme.headline6,),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Text(_body, style: Theme.of(context).textTheme.bodyText2,),
        )
      ],
    );
  }
}

class ImageBanner extends StatelessWidget {
  final String _assetPath;

  ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container( 
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(
        _assetPath,
        fit: BoxFit.cover,  
      ),
    );
  }
}