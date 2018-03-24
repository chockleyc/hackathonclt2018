class Question {
  String _question;
  String _hint;
  int _max;

  Question(this._question, this._hint, [this._max = 0]);

  String get question => this._question;
  String get hint => this._hint;
  int get max => this._max;

}
