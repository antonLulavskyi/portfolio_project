class Project {
  final String imageSource;
  final String title;
  final String description;
  final List<String> technologies;

  Project(
      {required this.imageSource,
      required this.title,
      required this.description,
      required this.technologies});
}

class ProjectsData {
  List<Project> projects = [
    Project(
      imageSource: 'assets/images/nyt_viewer.png',
      title: 'New Yerk Times Viewer',
      description: 'description',
      technologies: ['Dart, Swift'],
    ),
    Project(
      imageSource: 'assets/images/nyt_viewer.png',
      title: 'Provider',
      description: 'description',
      technologies: ['Dart, Swift'],
    ),
  ];
}
