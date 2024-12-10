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
      name: 'Educational App',
      imageUrl: AppAssets.firstApp,
      description:
          'It show courses with thier details with ability to add to cart and pay for it with paybal.',
      githubRepoLink: 'https://github.com/rowanibrahem/afro_app.git',
      previewLink:
          'https://drive.google.com/file/d/1-TeRzaO19VKidAVVDgGIploHsHLc4h9W/view?usp=drive_link',
    ),
    const Project(
      name: 'Rabeh App',
      imageUrl: 'assets/images/rabeh.png',
      description:
          'App used by drivers to to easy settelement , show thier invoices and thier orders. ',
      previewLink:
          'https://play.google.com/store/apps/details?id=com.rabeh.rabehdriver',
    ),
    const Project(
      name: 'Meal App',
      imageUrl: 'assets/images/meal.png',
      description:
          'App to preview Meals with thier ingredients and recipes have two themes and two languages',
      githubRepoLink: 'https://github.com/rowanibrahem/Meal-App',
      previewLink:
          'https://www.linkedin.com/posts/rowanibrahem_flutterdeveloper-fluttercommunity-fluterapps-activity-7054887126403850240-OIFJ?utm_source=share&utm_medium=member_desktop',
    ),
    const Project(
      name: 'Dar Elsoker',
      imageUrl: 'assets/images/dar.png',
      description:
          'As a project manager , I lead this project about clinical management system',
      githubRepoLink: '',
      previewLink:
          'https://www.linkedin.com/posts/rowanibrahem_projectmanagement-agile-softwaredevelopment-activity-7228808337008541697-9Q7T?utm_source=share&utm_medium=member_android',
    ),
    const Project(
      name: 'MidLink Hub',
      imageUrl: 'assets/images/midlink.png',
      description:
          'It is about referring systems in hospitals and I just made it as prototype.',
      previewLink:
          'https://www.linkedin.com/posts/rowanibrahem_innovegypt-midlinkhub-innovegypt-activity-7237907549885259776-iKRF?utm_source=share&utm_medium=member_android',
    ),
    const Project(
      name: 'My Articles',
      imageUrl: 'assets/images/article.jpg',
      description:
          'I wrote articles in diffrent topics such as clan code , CI/CD in flutter ',
      previewLink:
          'https://www.linkedin.com/newsletters/tech-tales-7214681089842307073/',
    ),
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
