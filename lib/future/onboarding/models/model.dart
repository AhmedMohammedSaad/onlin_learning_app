//! model class for Title  , SupTitle ,images

class Model {
  final String title;
  final String supTitle;
  final String imagePase;
  Model({
    required this.title,
    required this.supTitle,
    required this.imagePase,
  });
}

//! List for show model in bages Screen
List<Model> category = [
  Model(
    title: 'Better way to learning\nis calling you!',
    supTitle:
        'Impeet viverra vivamus porttior ules ac vulte\nlectus velit sen lectus ue',
    imagePase: 'assets/images/undraw_creative_woman_re_u5tk1.png',
  ),
  Model(
    title: 'Find yourself by doing\nwhatever you do !',
    supTitle:
        'Impeet viverra vivamus porttior ules ac vulte\nlectus velit sen lectus ue',
    imagePase: 'assets/images/undraw_mention_re_k5xc1.png',
  ),
  Model(
    title: 'It’s not just learning,It’s a promise!',
    supTitle:
        'Impeet viverra vivamus porttior ules ac vulte\nlectus velit sen lectus ue',
    imagePase: 'assets/images/undraw_annotation_re_h7741.png',
  ),
];
