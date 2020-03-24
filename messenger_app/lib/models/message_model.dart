import './user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.text, this.isLiked, this.unread});
}

final User currentUser = User(
  id: 0,
  name: 'Abhay V Ashokan',
  imageUrl: 'lib/assets/images/abhay.jpeg',
);

final User ajay = User(
  id: 1,
  name: 'Ajay Ravindran',
  imageUrl: 'lib/assets/images/ajay.jpeg',
);

final User anna = User(
  id: 2,
  name: 'Annarose MB',
  imageUrl: 'lib/assets/images/anna.jpeg',
);

final User harsha = User(
  id: 3,
  name: 'Harsha S Warrier',
  imageUrl: 'lib/assets/images/harsha.jpeg',
);

final User calvin = User(
  id: 4,
  name: 'Calvin Wilson',
  imageUrl: 'lib/assets/images/calvin.jpeg',
);

final User sumesh = User(
  id: 5,
  name: 'Muhammed Shaheem P',
  imageUrl: 'lib/assets/images/sumesh.jpeg',
);

final User akshay = User(
  id: 6,
  name: 'Akshay Ravindran',
  imageUrl: 'lib/assets/images/akshay.jpeg',
);

final User irshad = User(
  id: 7,
  name: 'Irshad PI',
  imageUrl: 'lib/assets/images/irshad.jpeg',
);

final User sidharth = User(
  id: 8,
  name: 'Sidharth Vinod',
  imageUrl: 'lib/assets/images/sidharth.jpeg',
);

final User felix = User(
  id: 9,
  name: 'Felix Josemon',
  imageUrl: 'lib/assets/images/felix.jpeg',
);

List<User> favorites = [ajay, calvin, harsha, anna, felix];

List<Message> chats = [
  Message(
    sender: ajay,
    text: 'You only live once!',
    time: '5:30 PM',
    unread: true,
    isLiked: true,
  ),
  Message(
    sender: anna,
    text:
        'There\'s nothing in a caterpillar that tells you it\'s going to be butterfly.',
    time: '6:30 PM',
    isLiked: true,
    unread: true,
  ),
  Message(
      sender: harsha,
      text: 'Life is like a box of chocolates.',
      time: '6:00 AM',
    isLiked: false,
      unread: false),
  Message(
    sender: calvin,
    text:
        'And, once more, I prove Commander Maro the fool. I told him you can\'t stop the Dark Brotherhood. Never could.',
    time: '4:00 AM',
    unread: false,
    isLiked: false,
  ),
  Message(
    sender: sumesh,
    text: 'Hakuna Matata...',
    time: '1:00 AM',
    unread: true,
    isLiked: true,
  ),
  Message(
    sender: felix,
    text: 'This too shall pass, doing things for the sheer fun of it.',
    time: '12:00 AM',
    unread: false,
    isLiked: false,
  ),
  Message(
    sender: akshay,
    text: 'Kyubi',
    time: '2:05 AM',
    unread: false,
    isLiked: false,
  ),
  Message(
    sender: irshad,
    text: 'static',
    time: '2:15 AM',
    unread: false,
    isLiked: false,
  ),
  Message(
    sender: sidharth,
    text: 'You know my name, not my story...',
    time: '2:15 AM',
    unread: false,
    isLiked: false,
  ),
];

List<Message> messages = [
  Message(
    sender: ajay,
    text: 'You only live once!',
    time: '5:30 PM',
    unread: true,
    isLiked: true,
  ),
  Message(
    sender: anna,
    text:
        'There\'s nothing in a caterpillar that tells you it\'s going to be butterfly.',
    time: '6:30 PM',
    isLiked: true,
    unread: true,
  ),
  Message(
      sender: harsha,
      text: 'Life is like a box of chocolates.',
      time: '6:00 AM',
    unread: false,
      isLiked: false),
  Message(
    sender: calvin,
    text:
        'And, once more, I prove Commander Maro the fool. I told him you can\'t stop the Dark Brotherhood. Never could.',
    time: '4:00 AM',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sumesh,
    text: 'Hakuna Matata...',
    time: '1:00 AM',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: felix,
    text: 'This too shall pass, doing things for the sheer fun of it.',
    time: '12:00 AM',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: akshay,
    text: 'Kyubi',
    time: '2:05 AM',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: irshad,
    text: 'static',
    time: '2:15 AM',
    unread: false,
    isLiked: false,
  ),
  Message(
    sender: sidharth,
    text: 'You know my name, not my story...',
    time: '2:15 AM',
    isLiked: false,
    unread: false,
  ),
];
