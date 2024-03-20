final String table = 'my_table';

class ModelDataBase {
  static final List<String> values = [
    /// Add all fields
    id, user, tel, pass, name, ApPat, ApMat,
  ];

  static final String id = 'id';
  static final String user = 'user';
  static final String tel = 'tel';
  static final String pass = 'pass';
  static final String name = 'name';
  static final String ApPat = 'ApPat';
  static final String ApMat = 'ApMat';
}

class Model {
  final int? id; //? - control de variables vacias o nulas
  final String user;
  final int tel;
  final String pass;
  final String name;
  final String ApPat;
  final String ApMat;

  const Model({
    this.id,
    required this.user,
    required this.tel,
    required this.pass,
    required this.name,
    required this.ApPat,
    required this.ApMat,
  });

  //Perder los datos
  Model copy({
    int? id,
    String? user,
    int? tel,
    String? pass,
    String? name,
    String? ApPat,
    String? ApMat,
  }) =>
      Model(
        id: id ?? this.id,
        user: user ?? this.user,
        tel: tel ?? this.tel,
        pass: pass ?? this.pass,
        name: name ?? this.name,
        ApPat: ApPat ?? this.ApPat,
        ApMat: ApMat ?? this.ApMat,
      );

  static Model fromJson(Map<String, Object?> json) => Model(
        id: json[ModelDataBase.id] as int?,
        user: json[ModelDataBase.user] as String,
        tel: json[ModelDataBase.tel] as int,
        pass: json[ModelDataBase.pass] as String,
        name: json[ModelDataBase.name] as String,
        ApPat: json[ModelDataBase.ApPat] as String,
        ApMat: json[ModelDataBase.ApMat] as String,
      );

  Map<String, Object?> toJson() => {
        ModelDataBase.id: id,
        ModelDataBase.name: name,
        ModelDataBase.user: user,
        ModelDataBase.tel: tel,
        ModelDataBase.pass: pass,
        ModelDataBase.ApPat: ApPat,
        ModelDataBase.ApMat: ApMat,
      };
  /* data['respuesta'][2]['name'] = 'alejandro'
  '''
  {
    header:{status:200,,},
    respuesta:{[
      alumno1: {id:1, name: alejandro, age:27}
      alumno2: {id:1, name: alejandro, age:27}
      alumno3: {id:1, name: alejandro, age:27}
    ]}
  }
'''*/
}
