import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<CustomService> servicesDetails = [
    CustomService(
        service: 'UI/UX Design Solutions',
        logo: AppAssets.uiSecond,
        description:
            "Craft user-friendly and visually appealing interfaces for web and mobile applications. Specialize in creating intuitive designs that enhance user experiences and drive engagement."),
    CustomService(
        service: 'Customer Needs Analysis',
        logo: AppAssets.analysiis2,
        description:
            "Gather and analyze customer requirements through active engagement, ensuring a deep understanding of their challenges and objectives to create tailored solutions."),
    CustomService(
      service: 'User Research and Testing',
      logo: AppAssets.research,
      description:
          'Conduct in-depth user research, usability testing, and competitor analysis to gather insights that guide design decisions. My approach ensures the final product meets user needs and solves real problems effectively.',
    ),
  ];
  static const List<CustomService> services = [
    CustomService(
      service: 'UI/UX Design',
      logo: AppAssets.uifirst,
      // description:
      //     'Crafting high-performance, user-friendly apps with features like API integration, state management (Bloc/Provider), and secure payment gateways',
    ),
    CustomService(
      service: 'Prototyping and wireframing',
      logo: AppAssets.wireframe,
      // description:
      //     'Leading Agile projects, gathering requirements, managing teams, and ensuring on-time delivery.',
    ),
    CustomService(
      service: 'Business Solution Analysis',
      logo: AppAssets.analysis1,
      // description:
      //     'Creating technical documentation, mentoring on Flutter, and delivering development workshops.',
    ),
  ];
  static List<Project> projects = [
    const Project(
      name: 'Real State App',
      imageUrl: 'assets/images/Rentverse.jpg',
      description:
          'Simplify the process of renting properties of renting properties.',
      // githubRepoLink: 'https://github.com/rowanibrahem/afro_app.git',
      previewLink:
          'https://www.behance.net/gallery/210819587/Rentverse-(Real-Estate-APP)',
    ),
    const Project(
      name: 'E-Learning',
      imageUrl: 'assets/images/Center cover.png',
      description:
          'Innovative educational app that allows teachers to upload and organize content like vedios and books. ',
      previewLink:
          'https://www.behance.net/gallery/203328665/E-Learning-App',
    ),
    const Project(
      name: 'Pharma Hub',
      imageUrl: 'assets/images/Pharmahup.png',
      description:
          'Mobile Application designed to simplify the medecine ordering process for pharmacists',
      // githubRepoLink: 'https://github.com/rowanibrahem/Meal-App',
      previewLink:
          'https://www.behance.net/gallery/206312315/PharmaHub-(E-Commerce-App)',
    ),
    const Project(
      name: 'Dar Elsoker',
      imageUrl: 'assets/images/Dar elsokar.png',
      description:
          'The medical clinic management system aims to improve the efficiency and quality of health care services provided by the clinic.',
      // githubRepoLink: '',
      previewLink:
          'https://www.behance.net/gallery/192745441/Medical-Clinc-System',
    ),
    // const Project(
    //   name: 'MidLink Hub',
    //   imageUrl: 'assets/images/midlink.png',
    //   description:
    //       'It is about referring systems in hospitals and I just made it as prototype.',
    //   previewLink:
    //       'https://www.linkedin.com/posts/rowanibrahem_innovegypt-midlinkhub-innovegypt-activity-7237907549885259776-iKRF?utm_source=share&utm_medium=member_android',
    // ),
    // const Project(
    //   name: 'My Articles',
    //   imageUrl: 'assets/images/article.jpg',
    //   description:
    //       'I wrote articles in diffrent topics such as clan code , CI/CD in flutter ',
    //   previewLink:
    //       'https://www.linkedin.com/newsletters/tech-tales-7214681089842307073/',
    // ),
    // Project(
    //   name: 'Ghaslah',
    //   imageUrl:
    //       'https://drive.google.com/uc?id=1ed4H2-cH6yk_kVkDdxOLcUkgP1xpuo72',
    //   description:
    //       'An application for add wash cars reservation with location in map and the picker will come to wash the cars',
    //   previewLink: 'https://youtu.be/gkeRSAfCZaI',
    // ),
    // Project(
    //   name: 'Zawilan',
    //   imageUrl:
    //       'https://drive.google.com/uc?id=1ElTwguynMLqhS295-IE7bTTabsZGZp8s',
    //   description:
    //       'Zwailan is an education app based on units and sections system, you start by sign up on app and wait until the teacher accept your join request.',
    //   previewLink: 'https://youtu.be/g92W-SmfkKc',
    //   googlePlay:
    //       'https://play.google.com/store/apps/details?id=com.radyhaggag.zawilan',
    // ),
  ];
  static const defaultPadding = 20.0;
}
