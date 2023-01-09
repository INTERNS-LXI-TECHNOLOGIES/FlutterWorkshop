class Word {
  Word({
    required this.word,
    required this.phonetic,
    required this.phonetics,
    required this.meanings,
    required this.license,
    required this.sourceUrls,
  });

  final String? word;
  final String? phonetic;
  final List<Phonetic> phonetics;
  final List<Meaning> meanings;
  final License? license;
  final List<String> sourceUrls;

  factory Word.fromJson(Map<String, dynamic> json) {
    return Word(
      word: json["word"],
      phonetic: json["phonetic"],
      phonetics: json["phonetics"] == null
          ? []
          : List<Phonetic>.from(
              json["phonetics"]!.map((x) => Phonetic.fromJson(x))),
      meanings: json["meanings"] == null
          ? []
          : List<Meaning>.from(
              json["meanings"]!.map((x) => Meaning.fromJson(x))),
      license:
          json["license"] == null ? null : License.fromJson(json["license"]),
      sourceUrls: json["sourceUrls"] == null
          ? []
          : List<String>.from(json["sourceUrls"]!.map((x) => x)),
    );
  }
}

class License {
  License({
    required this.name,
    required this.url,
  });

  final String? name;
  final String? url;

  factory License.fromJson(Map<String, dynamic> json) {
    return License(
      name: json["name"],
      url: json["url"],
    );
  }
}

class Meaning {
  Meaning({
    required this.partOfSpeech,
    required this.definitions,
    required this.synonyms,
    required this.antonyms,
  });

  final String? partOfSpeech;
  final List<Definition> definitions;
  final List<String> synonyms;
  final List<dynamic> antonyms;

  factory Meaning.fromJson(Map<String, dynamic> json) {
    return Meaning(
      partOfSpeech: json["partOfSpeech"],
      definitions: json["definitions"] == null
          ? []
          : List<Definition>.from(
              json["definitions"]!.map((x) => Definition.fromJson(x))),
      synonyms: json["synonyms"] == null
          ? ['No data']
          : List<String>.from(json["synonyms"]!.map((x) => x)),
      antonyms: json["antonyms"] == null
          ? ['No data']
          : List<dynamic>.from(json["antonyms"]!.map((x) => x)),
    );
  }
}

class Definition {
  Definition({
    required this.definition,
    required this.synonyms,
    required this.antonyms,
    required this.example,
  });

  final String? definition;
  final List<dynamic> synonyms;
  final List<dynamic> antonyms;
  final String? example;

  factory Definition.fromJson(Map<String, dynamic> json) {
    return Definition(
      definition: json["definition"],
      synonyms: json["synonyms"] == null
          ? ['No data']
          : List<dynamic>.from(json["synonyms"]!.map((x) => x)),
      antonyms: json["antonyms"] == null
          ? ['No data']
          : List<dynamic>.from(json["antonyms"]!.map((x) => x)),
      example: json["example"],
    );
  }
}

class Phonetic {
  Phonetic({
    required this.text,
    required this.audio,
    required this.sourceUrl,
    required this.license,
  });

  final String? text;
  final String? audio;
  final String? sourceUrl;
  final License? license;

  factory Phonetic.fromJson(Map<String, dynamic> json) {
    return Phonetic(
      text: json["text"],
      audio: json["audio"],
      sourceUrl: json["sourceUrl"],
      license:
          json["license"] == null ? null : License.fromJson(json["license"]),
    );
  }
}
