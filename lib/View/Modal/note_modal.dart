class NoteModal {
  String? tital;
  String? description;
  String? id;

  NoteModal({this.tital, this.description, this.id});

  NoteModal.fromJson(Map<String, dynamic> json) {
    tital = json['tital'];
    description = json['description'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tital'] = this.tital;
    data['description'] = this.description;
    data['id'] = this.id;
    return data;
  }
}
