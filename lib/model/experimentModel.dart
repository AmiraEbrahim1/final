class ExperimentModel {
  String? uuid;
  String? createdAt;
  String? updatedAt;
  String? title;
  String? category;
  String? description;
  String? postedBy;
  String? subject;
  String? tags;
  List<int>? ageCategory;
  int? difficulty;
  String? plan;
  String? thumbnail;
  bool? isPublished;
  bool? isDisabled;
  String? publishedAt;
  List<Precautions>? precautions;
  List<String>? outcomes;
  List<Faq>? faq;
  List<Procedure>? procedure;

  ExperimentModel(
      {this.uuid,
        this.createdAt,
        this.updatedAt,
        this.title,
        this.category,
        this.description,
        this.postedBy,
        this.subject,
        this.tags,
        this.ageCategory,
        this.difficulty,
        this.plan,
        this.thumbnail,
        this.isPublished,
        this.isDisabled,
        this.publishedAt,
        this.precautions,
        this.outcomes,
        this.faq,
        this.procedure});

  ExperimentModel.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    title = json['title'];
    category = json['category'];
    description = json['description'];
    postedBy = json['postedBy'];
    subject = json['subject'];
    tags = json['tags'];
    ageCategory = json['ageCategory'].cast<int>();
    difficulty = json['difficulty'];
    plan = json['plan'];
    thumbnail = json['thumbnail'];
    isPublished = json['isPublished'];
    isDisabled = json['isDisabled'];
    publishedAt = json['publishedAt'];
    if (json['precautions'] != null) {
      precautions = <Precautions>[];
      json['precautions'].forEach((v) {
        precautions!.add(new Precautions.fromJson(v));
      });
    }
    outcomes = json['outcomes'].cast<String>();
    if (json['faq'] != null) {
      faq = <Faq>[];
      json['faq'].forEach((v) {
        faq!.add(new Faq.fromJson(v));
      });
    }
    if (json['procedure'] != null) {
      procedure = <Procedure>[];
      json['procedure'].forEach((v) {
        procedure!.add(new Procedure.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['title'] = this.title;
    data['category'] = this.category;
    data['description'] = this.description;
    data['postedBy'] = this.postedBy;
    data['subject'] = this.subject;
    data['tags'] = this.tags;
    data['ageCategory'] = this.ageCategory;
    data['difficulty'] = this.difficulty;
    data['plan'] = this.plan;
    data['thumbnail'] = this.thumbnail;
    data['isPublished'] = this.isPublished;
    data['isDisabled'] = this.isDisabled;
    data['publishedAt'] = this.publishedAt;
    if (this.precautions != null) {
      data['precautions'] = this.precautions!.map((v) => v.toJson()).toList();
    }
    data['outcomes'] = this.outcomes;
    if (this.faq != null) {
      data['faq'] = this.faq!.map((v) => v.toJson()).toList();
    }
    if (this.procedure != null) {
      data['procedure'] = this.procedure!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Precautions {
  String? puid;
  String? precaution;

  Precautions({this.puid, this.precaution});

  Precautions.fromJson(Map<String, dynamic> json) {
    puid = json['puid'];
    precaution = json['precaution'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['puid'] = this.puid;
    data['precaution'] = this.precaution;
    return data;
  }
}

class Faq {
  String? question;
  String? answer;
  String? courseUuid;

  Faq({this.question, this.answer, this.courseUuid});

  Faq.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    answer = json['answer'];
    courseUuid = json['courseUuid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question'] = this.question;
    data['answer'] = this.answer;
    data['courseUuid'] = this.courseUuid;
    return data;
  }
}

class Procedure {
  String? uuid;
  String? createdAt;
  String? updatedAt;
  String? title;
  String? description;
  String? expUuid;
  String? postedBy;
  List<Media>? media;

  Procedure(
      {this.uuid,
        this.createdAt,
        this.updatedAt,
        this.title,
        this.description,
        this.expUuid,
        this.postedBy,
        this.media});

  Procedure.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    title = json['title'];
    description = json['description'];
    expUuid = json['expUuid'];
    postedBy = json['postedBy'];
    if (json['media'] != null) {
      media = <Media>[];
      json['media'].forEach((v) {
        media!.add(new Media.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['title'] = this.title;
    data['description'] = this.description;
    data['expUuid'] = this.expUuid;
    data['postedBy'] = this.postedBy;
    if (this.media != null) {
      data['media'] = this.media!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Media {
  String? type;
  String? url;

  Media({this.type, this.url});

  Media.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['url'] = this.url;
    return data;
  }
}