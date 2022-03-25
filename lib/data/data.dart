class Project {
  final List<String> images;
  final String title;
  final String description;
  final List<String> technologies;

  Project(
      {required this.images,
      required this.title,
      required this.description,
      required this.technologies});
}

class ProjectsData {
  List<Project> projects = [
    Project(
      images: ['assets/images/nyt_viewer_01.png','assets/images/nyt_viewer_02.png','assets/images/nyt_viewer_03.png','assets/images/nyt_viewer_04.png'],
      title: 'New Yerk Times Viewer',
      description: 'This project makes API call to the New York Times, to gram some data about lates posts This project makes API call to the New York Times, to gram some data about lates posts',
      technologies: ['Flutter ', 'API ', 'http '],
    ),
    Project(
      images: ['assets/images/provider_01.png','assets/images/provider_02.png','assets/images/provider_03.png','assets/images/provider_04.png','assets/images/provider_05.png',],
      title: 'Phone Book "Provider"',
      description: 'Project , that was made with a help of provider package. Implements single data-model sibscriber and a few listeners.',
      technologies: ['Flutter ', 'Provider '],
    ),
     Project(
      images: ['assets/images/nyt_viewer_01.png'],
      title: 'New Yerk Times Viewer',
      description: 'description',
      technologies: ['Dart, Swift'],
    ),
    Project(
      images: ['assets/images/nyt_viewer_01.png'],
      title: 'Provider',
      description: 'description',
      technologies: ['Dart, Swift'],
    ),
  ];
}
