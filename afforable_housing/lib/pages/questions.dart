import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => new _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final TextEditingController _controller = new TextEditingController();
  String currentQ = 'What zip code are you looking for a home in?';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          color: Colors.blue,
        ),
        child: new Stack(
          children: [
            new Transform(
              child: new Center(
                child: new Container(
                  padding: const EdgeInsets.all(10.0),
                  height: 300.0,
                  child: new Card(
                    child: new ListTile(
                      title: new Text('Next Question'),
                    ),
                  ),
                ),
              ),
              transform: new Matrix4.translationValues(10.0, -10.0, 10.0),
            ),
            new Center(
                child: new Container(
                  padding: const EdgeInsets.all(10.0),
                  height: 300.0,
                  child: new Card(
                    child: new ListTile(
                      title: new Text('Next Question'),
                    ),
                  ),
                ),
              ),

            new Transform(
              transform: new Matrix4.translationValues(-10.0, 10.0, -10.0),
              child: new Center(
                child: new Container(
                  padding: const EdgeInsets.all(10.0),
                  height: 300.0,
                  child: new Card(
                    child: new Column(
                      children: [
                        new ListTile(
                          title: new Padding(
                              padding: const EdgeInsets.only(top: 20.0, bottom:10.0, left: 10.0, right: 10.0),
                              child: new Text(currentQ)
                          ),
                          subtitle: new Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom: 90.0, left: 10.0, right: 10.0),
                            child: new TextField(
                              controller: _controller,
                              decoration: new InputDecoration(
                                hintText: 'Zip code',

                              ),
                            ),
                          ),
                        ),
                        new ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            new RaisedButton(
                                child: new Text('Next'),
                                onPressed: (){
                                  this.setState((){
                                      currentQ = 'What is your current income range?';
                                    }
                                  );

                                }
                            ),
                          ],
                        ),
                    ]
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
