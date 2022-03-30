class Project {
  final List<String> images;
  final String title;
  final String description;
  final String technologies;

  Project(
      {required this.images,
      required this.title,
      required this.description,
      required this.technologies});
}

class ProjectsData {
  List<Project> projects = [
    Project(
      images: [
        'assets/images/nyt_viewer.png',
        'assets/images/nyt_viewer_1.png',
      ],
      title: 'New Yerk Times Viewer',
      description:
          'This project displays the most popular newsfeeds from New York Times API. Aplication fetches a complex Json responce into a dart objects. Aplication currently in development mode',
      technologies: ' flutter , api , http ',
    ),
    Project(
      images: [
        'assets/images/provider_01.png',
        'assets/images/provider_02.png',
        'assets/images/provider_03.png',
        'assets/images/provider_04.png',
        'assets/images/provider_05.png',
      ],
      title: 'Phone Book "Provider"',
      description:
          'Project , that was made with a help of provider package. Implements single data-model sibscriber and a few listeners.',
      technologies: ' flutter , provider ',
    ),
    Project(
      images: ['assets/images/adaptive01.png','assets/images/adaptive02.png','assets/images/adaptive03.png'],
      title: 'Adaptive Layout',
      description: 'With this project I was practising to build an adaptive layout for the different screen sizes. Rendering Column or Row base on a width and replacing a floating action button with a default one on the top.',
      technologies: ' flutter',
    ),
    Project(
      images: ['assets/images/portfolio_01.png','assets/images/portfolio_02.png','assets/images/portfolio_03.png'],
      title: 'this.portfolio',
      description: 'With this project I was practising to build an adaptive layout for the different screen sizes. Rendering Column or Row base on a width and replacing a floating action button with a default one on the top.',
      technologies: ' flutter',
    ),
  ];
}

const kSelfDescription = 
'Hi, my name is Anton. Back in 2019 I started wondering how the code work, how exactly we can paint almost everything we got in the real world onto the screens of our smartphones, laptops etc. I started to learn C language and general concepts of programming. I wasn\'t planning to work in the industry though, stranglly I started thinking about it on my previous job, where I was working 60 hours per week, and just waiting untill weekend to write some code, ride a bike - that was relaxing for me.'
;

const kSelfDescription2 = 'So, in January 2022 I decided that, I\'m gonna leave my job and dedicated myself to a programming, on that moment I have picked Flutter as a tool to work and learn. I was working with functional programing previously with Swift(UIKit), and a litle with React, so the concept of reactive programming wasn\'t new for me.  My roadmap wasn\'t perferct as for developer who want\'s to find a job, because I was jumping from stack to stack, just because I wanted to learn everything, and this felling still remains, but I think I found a better way an organized way to learn.';

const kSelfDescription3 = 'For more information about my background I have alredy sent to you my CV, if not in a case you accidentally hit this website you can reach out to me via Contact me link on this site. :)';