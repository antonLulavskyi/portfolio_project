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
      description: 'This project makes API call to the New York Times, to gram some data about lates posts This project makes API call to the New York Times, to gram some data about lates posts',
      technologies: ['Dart, Swift'],
    ),
    Project(
      imageSource: 'assets/images/provider.png',
      title: 'Phone Book "Provider"',
      description: 'Project , that was made with a help of provider package. Implements single data-model sibscriber and a few listeners.',
      technologies: ['Flutter, Provider, http'],
    ),
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
