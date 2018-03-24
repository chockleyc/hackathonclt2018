import 'package:afforable_housing/models/question_model.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => new _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final TextEditingController _controller = new TextEditingController();
  Question currentQ;
  List<Question> questions = [
    new Question('What zip code are you looking for a home in?', 'Zip code'),
    new Question('Do you qualify for Section 8?', 'Yes/No'),
    new Question( 'What is your primary mode of transportation?', 'Transportation'),
    new Question('How many square feet are you looking for?', 'Square Feet', 5000),
    new Question('No more questions', '', -1),
  ];
  int index;

  @override
  void initState(){
    index = 0;
    currentQ = questions[index];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          color: Colors.black12,
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
                              child: new Text(currentQ.question)
                          ),
                          subtitle: new Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom: 90.0, left: 10.0, right: 10.0),
                            child: new TextField(
                              controller: _controller,
                              decoration: new InputDecoration(
                                hintText: currentQ.hint,

                              ),
                            ),
                          ),
                        ),
                        new ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            new RaisedButton(
                                child: (currentQ.max < 0) ? new Text('Complete') : new Text('Next'),
                                color: (currentQ.max < 0) ? Colors.grey : Theme.of(context).primaryColor,
                                onPressed: (){
                                  this.setState(() {
                                    index++;
                                    if (index == questions.length) {
                                      index--;
                                      currentQ =
                                      new Question('No more questions', '', -1);
                                    } else {
                                      currentQ = questions[index];
                                    }
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

