String CapsText({required String text}) {
  List arrayPieces = [];

  String outPut = '';

  text.split(' ').forEach((sepparetedWord) {
    arrayPieces.add(sepparetedWord);
  });

  arrayPieces.forEach((word) {
    word =
        "${word[0].toString().toUpperCase()}${word.toString().substring(1)} ";
    outPut += word;
  });

  return outPut;
}
