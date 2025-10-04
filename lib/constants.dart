import 'dart:ui' show Color;

import 'package:pdf/pdf.dart';
import 'package:resume/types.dart';

// IMPORTANT: Replace this based on your workstation. Else, the save feature
// will fail.
const kSavePath = 'C:/Users/ferna/Downloads/fernan-buan-resume.pdf';

// Customized branding.
const seedColor = Color(0xFF022D65);
const contrast = 1.0;
final pageFormat = PdfPageFormat.a4.copyWith(
  marginBottom: 0,
  marginLeft: 0,
  marginRight: 0,
  marginTop: 0,
);

const white = PdfColor.fromInt(0xffffffff);

const fullName = 'Fernan Buan';
const contacts = <Contact>[
  (label: 'fernan.buan7@gmail.comz', icon: 0xe158, url: null),
  (label: 'github.com/fernan542', icon: 0xe80b, url: null),
  (label: '(+63)916-314-4915', icon: 0xe0cd, url: null),
];

const educationRecords = <PersonalRecord>[
  (
    details:
        'Thesis: Developed M.A.S.S. (Motorcycle Anti-theft Security System) '
        'using Arduino, featuring keyless motor operation (turn on/off) '
        'controlled via SMS, Wi-Fi, or fingerprint authentication, along with '
        'real-time mobile app tracking.',
    leading: '2015–2019',
    subtitle: 'Bachelor of Science in Information Technology',
    title: 'Pambayang Dalubhasaan ng Marilao',
    trailing: 'Bulacan, PH',
    onTapDestination: null,
  ),
  (
    details: null,
    leading: '2011–2015',
    subtitle: null,
    title: 'Jesus is Lord Colleges Foundation Inc.',
    trailing: 'Bulacan, PH',
    onTapDestination: null,
  ),
  (
    details: null,
    leading: '2005–2011',
    subtitle: 'Graduated with Honors',
    title: 'Abangan Sur Elementary School',
    trailing: 'Bulacan, PH',
    onTapDestination: null,
  ),
];

const experienceRecords = <PersonalRecord>[
  (
    details:
        'Implemented server-side rendering using Next.js with strict adherence '
        'to W3C ARIA Double-A accessibility standards. Developed and maintained '
        '.NET Core MVC Web APIs, integrated React Query for efficient data '
        'fetching, and contributed to the project’s CI/CD pipelines.',
    leading: 'Aug. 2024–Oct. 2025',
    subtitle: 'MPH International',
    title: 'Compass Group at Microsoft',
    trailing: 'Software Engineer',
    onTapDestination: null,
  ),
  (
    details:
        'Develop full-stack applications from scratch using modern technologies '
        'including Flutter, Go, and React. Contribute to DevOps processes with '
        'Google Cloud Platform and AWS. Experienced in deploying and publishing '
        'apps to both the iOS App Store and Google Play Store.',
    leading: 'Jan. 2021–Aug. 2024',
    subtitle: null,
    title: 'Hooli Software Inc.',
    trailing: 'Software Engineer',
    onTapDestination: null,
  ),
  (
    details:
        'Managed hardware and network systems while ensuring adherence to IT '
        'standards. Also handled graphic design tasks, delivering visual assets '
        'aligned with company branding and technical requirements.',
    leading: 'Oct. 2019–Dec. 2020',
    subtitle: 'Autospeedygo Corporation',
    title: 'Nissan PH (Luzon)',
    trailing: 'IT Administrator',
    onTapDestination: null,
  ),
];

const aaRecords = <PersonalRecord>[
  (
    details:
        'In recognition of extraordinary performance, can-do attitude and '
        'going above-and-beyond for the organization.',
    leading: 'Dec. 2022',
    subtitle: 'Hooli Software Inc.',
    title: 'Above and Beyond Award',
    trailing: '',
    onTapDestination: null,
  ),
  (
    details: null,
    leading: 'Oct. 2022',
    subtitle: 'Google Cloud Skills Boost',
    title: 'Google Cloud DevOps Certification',
    trailing: '',
    onTapDestination: null,
  ),
  (
    details:
        "Developed the game for just a week, we're able to won as "
        "Second Runner Up",
    leading: 'Mar. 2019',
    subtitle: 'Game Development - Beat`Em Up',
    title: '6TH ALCU-REGION 3 GENERAL ASSEMBLY',
    trailing: '',
    onTapDestination: null,
  ),
];

const skillRecords = <PersonalRecord>[
  (
    details: 'Filipino, English',
    leading: '',
    subtitle: null,
    title: 'Languages',
    trailing: '',
    onTapDestination: null,
  ),
  (
    details:
        'Dart (Flutter), Go (gRPC, gin), JS (Typescript, React, NextJS), '
        'Python (Rpi, Django), C# (.NET Core, Unity), HTML/CSS, Git',
    leading: '',
    subtitle: null,
    title: 'Programming',
    trailing: '',
    onTapDestination: null,
  ),
  (
    details:
        'Stripe, Google Wallet, Apple Wallet, In-App Purchase, Sengrid, Twilio '
        'Google Cloud APIs, Google Maps, Firebase, Supabase, Appwrite, '
        'MsAL / EntraID',
    leading: '',
    subtitle: null,
    title: 'Integrations',
    trailing: '',
    onTapDestination: null,
  ),
  (
    details: 'Adobe Photoshop, Adobe Illustrator, Figma, Rive',
    leading: '',
    subtitle: null,
    title: 'Graphic Design',
    trailing: '',
    onTapDestination: null,
  ),
];

const interestRecords = <PersonalRecord>[
  (
    details:
        'Percussions, Strategy Games, Shooting Games, Sepak Takraw, Theology, '
        'Printing',
    leading: '',
    subtitle: null,
    title: '',
    trailing: '',
    onTapDestination: null,
  ),
];

const projectsRecords = <PersonalRecord>[
  (
    details:
        'Developed within 3 weeks, this is a mobile app for helping my local '
        'church members to share information, to improve communication, and '
        'to provide documentations about the trainings conducted by the church.',
    leading: 'Jan 2025–',
    subtitle: '',
    title: 'Church Training Week App',
    trailing: 'Lead Software Engineer',
    onTapDestination:
        'https://play.google.com/store/apps/details?id=com.fpb_apps.loccf_training_week&hl=en_US',
  ),
  (
    details:
        'An open source Flutter package for showing a modal that contains '
        'country dial code.',
    leading: 'May 2022–',
    subtitle: '',
    title: 'Flutter Country Code Picker',
    trailing: 'Project Owner',
    onTapDestination: 'https://pub.dev/packages/fl_country_code_picker',
  ),
  (
    details:
        'Zentive is an all-in-one business management software that allows '
        'field service business owners & field technicians to increase '
        'operational efficiency and spend more time on revenue '
        'generating tasks.',
    leading: 'Feb. 2024–Aug. 2024',
    subtitle: 'Hooli Software',
    title: 'Zentive',
    trailing: 'Software Engineer',
    onTapDestination: 'https://zentive.io/',
  ),
  (
    details:
        'Kuponji is a mobile application tool that enables the Small-to-Medium '
        'sized Businesses (SMBs) to create a quick, simple and easy coupon. '
        'In line with this, it provides favorable coupon offers and deals to '
        'the consumers.',
    leading: 'Feb. 2022–Aug. 2023',
    subtitle: 'Hooli Software',
    title: 'Kuponji',
    trailing: 'Lead Software Engineer',
    onTapDestination: 'https://www.kuponji.com/',
  ),
  (
    details:
        'A unique, innovative and invaluable on-demand, real estate '
        'agent-hailing / matching mobile app that home buyers or renters '
        'can use to submit an onsite property tour request. ',
    leading: 'May 2022–Jun. 2022',
    subtitle: 'Hooli Software',
    title: 'Ready Agent',
    trailing: 'Software Engineer',
    onTapDestination: 'https://www.readyagent.app/',
  ),
];
