/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Sample'),
        ),
        body: const Center(
          child: Text('Welcome'),
        ),
      ),
    );
  }
}*/
/*import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context)
  {
    return MaterialApp(home: Text('my home'),);
  }
}*/
/*import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Text('My default text is here')),
    );
  }
}*/
/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var _questionIndex = 0;

  void _() {
    _questionIndex += 1;
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      "what is your favorite color?",
      "which food you like more?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my app bar'),
        ),
        body: Column(
          children: [
            Text(
              _questions[_questionIndex],
            ),
            ElevatedButton(onPressed: _, child: Text("Answer 1")),
            ElevatedButton(onPressed: _, child: Text("Answer 2")),
            ElevatedButton(onPressed: _, child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}*/
/*import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      "What is your favorite Sport?",
      "Who is your favourite Cricketer?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Quiz'),
        ),
        body: Column(
          children: [
            Question(
              _questions[_questionIndex],
            ),
            ElevatedButton(onPressed: _answerQuestion, child: Text("Answer 1")),
            ElevatedButton(onPressed: _answerQuestion, child: Text("Answer 2")),
            ElevatedButton(onPressed: _answerQuestion, child: Text("Answer 3")),
          ],
        ),
      ),
    );
  }
}*/
/*import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Ticket Booking',
      home: MovieListScreen(),
    );
  }
}

class MovieListScreen extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
      title: 'Varisu',
      showtimes: ['4:00 AM','8:00 AM','12:00 AM','3:00 PM', '7:00 PM', '11:00 PM'],
    ),
    Movie(
      title: 'Thunivu',
      showtimes: ['4:00 PM', '8:00 PM', '12:00 AM'],
    ),
    Movie(
      title: 'PS-II',
      showtimes: ['5:00 PM', '9:00 PM', '1:00 AM'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(movies[index].title),
            subtitle: Text(movies[index].showtimes.join(', ')),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovieDetailScreen(movie: movies[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Showtimes: ${movie.showtimes.join(', ')}',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Book movie tickets
              },
              child: Text('Book Tickets'),
            ),
          ),
        ],
      ),
    );
  }
}

class Movie {
  final String title;
  final List<String> showtimes;

  Movie({required this.title, required this.showtimes});
}*/
/*import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      home: SongListScreen(),
    );
  }
}

class SongListScreen extends StatelessWidget {
  final List<Song> songs = [
    Song(
      title: 'Bohemian Rhapsody',
      artist: 'Queen',
      duration: Duration(minutes: 6, seconds: 7),
    ),
    Song(
      title: 'Stairway to Heaven',
      artist: 'Led Zeppelin',
      duration: Duration(minutes: 8, seconds: 2),
    ),
    Song(
      title: 'Hotel California',
      artist: 'The Eagles',
      duration: Duration(minutes: 6, seconds: 31),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Songs'),
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(songs[index].title),
            subtitle: Text(songs[index].artist),
            trailing: Text(songs[index].duration.toString().split('.').first),
            onTap: () {
              // Play song
            },
          );
        },
      ),
    );
  }
}

class Song {
  final String title;
  final String artist;
  final Duration duration;

  Song({required this.title, required this.artist, required this.duration});
}*/
//QUIZ
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite Sport?',
      'answers': [
        {'text': 'Cricket', 'score': 10},
        {'text': 'Football', 'score': 7},
        {'text': 'Volleyball', 'score': 5},
        {'text': 'Badminton', 'score': 3}
      ],
    },
    {
      'questionText': 'Who\'s your favorite Cricketer?',
      'answers': [
        {'text': 'V Kohli', 'score': 10},
        {'text': 'MS Dhoni', 'score': 8},
        {'text': 'H Pandya', 'score': 9},
        {'text': 'R Sharma', 'score': 7}
      ],
    },
    {
      'questionText': 'Who\'s your favorite Footballer?',
      'answers': [
        {'text': 'C Ronaldo', 'score': 10},
        {'text': 'L Messi', 'score': 9},
        {'text': 'Neymar JR', 'score': 9},
        {'text': 'K Embappe', 'score': 8}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

