import 'dart:math';

List<String> listTwo = [
  "Dream Theater",
  "Arch Enemy",
  "Fleshgod Apocalypse",
  "Napalm Death",
  "Avenged Sevenfold",
  "Good Charlotte",
  "Sonata Arctica",
  "Iron Maiden",
  "Suicidal Tendencies",
  "Morbid Angel",
  "Dimmu Borgir",
  "Amon Amarth",
  "Armored Saint",
  "Blind Guardian",
  "Primal Fear",
  "Skeletal Remains",
  "Within Temptation",
  "God Dethroned",
  "Lacuna Coil",
  "Asking Alexandria",
  "Dark Tranquillity",
  "In Flames",
  "Judas Priest",
  "Killswitch Engage",
  "Fear Factory",
];

List<String> listThree = [
  "Children of Bodom",
  "At The Gates",
  "Lamb of God",
  "Beast in Black",
  "Cradle of Filth",
  "Motionless in White",
  "Unleash The Archers",
  "Swallow the Sun",
  "Faith No More",
  "My Dying Bride",
  "Alice in Chains",
  "Orb of Confusion",
  "Cult of Luna",
  "Black Veil Brides",
  "Woods of Infinity",
  "Soils of Fate",
  "Theatre of Tragedy",
  "Seven Foot Spleen",
  "From Moonshadows Falling",
  "Bury Your Dead",
  "At the Dawn",
  "Age of Artemis",
  "Gods of Eden",
  "Edge of Sanity",
  "My Last Whisper",
  "Lord of Putrefaction",
];

String generate(int num) {
  switch (num) {
    case 2:
      return generateTwo();
    case 3:
      return generateThree();
    default:
      return "N/A";
  }
}

String generateTwo() {
  int firstIndex = Random().nextInt(listTwo.length);
  int secondIndex = Random().nextInt(listTwo.length);
  String firstName = listTwo[firstIndex];
  String secondName = listTwo[secondIndex];

  String firstPart = firstName.split(' ')[0];
  String secondPart = secondName.split(' ')[1];

  return "$firstPart $secondPart";
}

String generateThree() {
  int firstIndex = Random().nextInt(listThree.length);
  int secondIndex = Random().nextInt(listThree.length);
  int thirdIndex = Random().nextInt(listThree.length);

  String firstName = listThree[firstIndex];
  String secondName = listThree[secondIndex];
  String thirdName = listThree[thirdIndex];

  String firstPart = firstName.split(' ')[0];
  String secondPart = secondName.split(' ')[1];
  String thirdPart = thirdName.split(' ')[2];

  return "$firstPart $secondPart $thirdPart";
}
