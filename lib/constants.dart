import 'dart:ui' show Color;

import 'package:pdf/pdf.dart';
import 'package:resume/types.dart';

// Customized branding.
const seedColor = Color(0xFF022D65);
const contrast = 1.0;

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
  ),
  (
    details: null,
    leading: '2011–2015',
    subtitle: null,
    title: 'Jesus is Lord Colleges Foundation Inc.',
    trailing: 'Bulacan, PH',
  ),
  (
    details: null,
    leading: '2005–2011',
    subtitle: 'Graduated with Honors',
    title: 'Abangan Sur Elementary School',
    trailing: 'Bulacan, PH',
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
  ),
  (
    details:
        'Managed hardware and network systems while ensuring adherence to IT '
        'standards. Also handled graphic design tasks, delivering visual assets '
        'aligned with company branding and technical requirements.',
    leading: 'Oct. 2019–Dec. 2020',
    subtitle: 'Autospeedygo Corporation',
    title: 'Nissan PH',
    trailing: 'IT Administrator',
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
  ),
  (
    details: null,
    leading: 'Oct. 2022',
    subtitle: 'Google Cloud Skills Boost',
    title: 'Google Cloud DevOps Certification',
    trailing: '',
  ),
  (
    details: null,
    leading: 'Mar. 2019',
    subtitle: 'Game Development - Beat`Em Up',
    title: '6TH ALCU-REGION 3 GENERAL ASSEMBLY',
    trailing: '',
  ),
];

const skillRecords = <PersonalRecord>[
  (
    details: 'Filipino, English',
    leading: '',
    subtitle: null,
    title: 'Languages',
    trailing: '',
  ),
  (
    details:
        'Dart (Flutter), Go (gRPC, gin), JS (Typescript, React, NextJS), '
        'Python (Rpi, Django), C# (.NET Core, Unity), HTML/CSS, Git',
    leading: '',
    subtitle: null,
    title: 'Programming',
    trailing: '',
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
  ),
  (
    details: 'Adobe Photoshop, Adobe Illustrator, Figma, Rive',
    leading: '',
    subtitle: null,
    title: 'Graphic Design',
    trailing: '',
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
  ),
];
