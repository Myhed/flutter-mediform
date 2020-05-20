import 'package:mediform/models/user_model.dart';
import 'package:mediform/models/rendez_vous.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread
  });
}

// USERS MEDECIN

final User currentUser = User(
   id: 0,
   name:'current user',
   imageUrl: 'assets/images/greg.jpg',
   profession: 'dddd'
);

final User greg = User(
   id: 1,
   name:'Greg',
   imageUrl: 'assets/images/greg.jpg',
   profession: 'Generaliste',
   status: 'indisponible'
);


final User james = User(
   id: 2,
   name:'James',
   imageUrl: 'assets/images/james.jpg',
   profession: 'Cardiologue',
   status: 'indisponible'
);

final User john = User(
   id: 3,
   name:'John',
   imageUrl: 'assets/images/john.jpg',
   profession: 'Orl',
   status: 'absent'
);

final User olivia = User(
   id: 4,
   name:'Olivia',
   imageUrl: 'assets/images/olivia.jpg',
   profession: 'Podologue',
   status: 'absent'
);

final User sam = User(
   id: 5,
   name:'Sam',
   imageUrl: 'assets/images/sam.jpg',
   profession: 'Chiropracteur',
   status: 'disponible'
);

final User sophia = User(
   id: 6,
   name:'Sophia',
   imageUrl: 'assets/images/sophia.jpg',
   profession: 'Dentiste',
   status: 'indisponible'
);

final User steven = User(
   id: 7,
   name:'Steven',
   imageUrl: 'assets/images/steven.jpg',
   profession: 'Kiné'
);

List<User> favoriteMedecins = [sam, steven, olivia, john, greg, sophia];

// Appointement

final Appointement appointement1 = Appointement(
  typeAppointement: 'consultation',
  dateRdv: '2020-10-21',
  adresse: '100 Boulevard du Général Leclerc, 92110 Clichy',
  nomHopital: 'Hôpital Beaujon',
  sujetRdv: 'Mal de ventre'
);

List<Appointement> appointements = [appointement1];
