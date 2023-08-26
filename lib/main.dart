import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pm_health_client/pages/carer/assigned_patients.dart';
import 'package:pm_health_client/pages/carer/auth_code.dart';
import 'package:pm_health_client/pages/carer/carer_profile.dart';
import 'package:pm_health_client/pages/carer/daily_task.dart';
import 'package:pm_health_client/pages/carer/daily_task_details.dart';
import 'package:pm_health_client/pages/carer/index.dart';
import 'package:pm_health_client/pages/carer/refer_clinician.dart';
import 'package:pm_health_client/pages/carer/routine_care.dart';
import 'package:pm_health_client/pages/carer/save_details.dart';
import 'package:pm_health_client/pages/carer/signin_carer.dart';
import 'package:pm_health_client/pages/carer/update_report.dart';
import 'package:pm_health_client/pages/choose_location.dart';
import 'package:pm_health_client/pages/clinicians/approve_appointment.dart';
import 'package:pm_health_client/pages/clinicians/cancel_appointment.dart';
import 'package:pm_health_client/pages/clinicians/check_patient_dashboard.dart';
import 'package:pm_health_client/pages/clinicians/doctor_auth_code.dart';
import 'package:pm_health_client/pages/clinicians/doctor_profile.dart';
import 'package:pm_health_client/pages/clinicians/index.dart';
import 'package:pm_health_client/pages/clinicians/signin_doctor.dart';
import 'package:pm_health_client/pages/loader.dart';
import 'package:pm_health_client/pages/loading.dart';
import 'package:pm_health_client/pages/patient/index.dart';
import 'package:pm_health_client/pages/patient/subpages/appointment.dart';
import 'package:pm_health_client/pages/patient/subpages/cholesterol_details.dart';
import 'package:pm_health_client/pages/patient/subpages/clinicians.dart';
import 'package:pm_health_client/pages/patient/subpages/medication.dart';
import 'package:pm_health_client/pages/patient/subpages/monitor_heart.dart';
import 'package:pm_health_client/pages/patient/subpages/schedule.dart';
import 'package:pm_health_client/pages/patient/subpages/step_details.dart';
import 'package:pm_health_client/pages/patient/subpages/track_heart.dart';
import 'package:pm_health_client/pages/self_care.dart';
import 'package:pm_health_client/pages/patient/subpages/patient_signin.dart';
import 'package:pm_health_client/pages/patient/index.dart';
import 'package:pm_health_client/pages/get_started_screen.dart';
import 'package:pm_health_client/pages/self_care.dart';
import 'package:pm_health_client/pages/patient/subpages/patient_signin.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

// whenever your initialization is completed, remove the splash screen:
// FlutterNativeSplash.remove();

///The route configuration
final _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const Loader()),
    GoRoute(
        path: '/intro-screen',
        builder: (BuildContext context, GoRouterState state) =>
            const Loading()),
    GoRoute(
        path: '/self-care',
        builder: (BuildContext context, GoRouterState state) =>
            const SelfCareScreen()),
    GoRoute(
        path: '/get-started',
        builder: (BuildContext context, GoRouterState state) =>
            const GetStartedScreen()),
    GoRoute(
        path: '/signup',
        builder: (BuildContext context, GoRouterState state) => const Signup()),
    GoRoute(
        path: '/patient',
        builder: (BuildContext context, GoRouterState state) =>
            const PatientDashBoard()),
    GoRoute(
        path: '/medication',
        builder: (BuildContext context, GoRouterState state) =>
            const Medication()),
    GoRoute(
        path: '/monitor-heart',
        builder: (context, state) => const MonitorHeart()),
    GoRoute(
        path: '/clinicians',
        builder: (BuildContext context, GoRouterState state) =>
            const Clinicians()),
    GoRoute(
      path: '/appointment',
      builder: (BuildContext context, GoRouterState state) =>
          const Appointment(),
    ),
    GoRoute(
        path: '/schedule-appointment',
        builder: (BuildContext context, GoRouterState state) =>
            const ScheduleAppointment()),
    GoRoute(
      path: '/track-heart',
      builder: (BuildContext context, GoRouterState state) =>
          const TrackHeart(),
    ),
    GoRoute(
      path: '/steps',
      builder: (BuildContext context, GoRouterState state) => const Steps(),
    ),
    GoRoute(
        path: '/cholesterol',
        builder: (context, state) => const CholesterolDetails()),
    GoRoute(
        path: '/carer-profile',
        builder: (context, state) => const CarerProfile()),
    GoRoute(path: '/auth-code', builder: (context, state) => const AuthCode()),
    GoRoute(
        path: '/sign-carer', builder: (context, state) => const CarerSignIn()),
    GoRoute(
        path: '/carer-dashboard',
        builder: (context, state) => const CarerDashBoard()),
    GoRoute(
        path: '/routine-care',
        builder: (context, state) => const RoutineCare()),
    GoRoute(
        path: '/daily-task', builder: (context, state) => const DailyTask()),
    GoRoute(
        path: '/daily-task-details',
        builder: (context, state) => const DailyTaskDetails()),
    GoRoute(
        path: '/save-details',
        builder: (context, state) => const SaveDetails()),
    GoRoute(
        path: '/carer-patient',
        builder: (context, state) => const AssignedPatient()),
    GoRoute(
        path: '/refer-clinician',
        builder: (context, state) => const ReferClinician()),
    GoRoute(
        path: '/update-report',
        builder: (context, state) => const UpdateReport()),
    GoRoute(
        path: '/doctor-profile',
        builder: (context, state) => const DoctorProfile()),
    GoRoute(
        path: '/doctor-auth-code',
        builder: (context, state) => const DoctorAuthCode()),
    GoRoute(
        path: '/doctor-signin',
        builder: (context, state) => const DoctorSignIn()),
    GoRoute(
        path: '/doctor-dashboard',
        builder: (context, state) => const DoctorDashboard()),
    GoRoute(
        path: '/doctor-approve',
        builder: (context, state) => const DoctorApprove()),
    GoRoute(
        path: '/doctor-cancel',
        builder: (context, state) => const DoctorCancel()),
    GoRoute(
        path: '/check-patient-dashboard',
        builder: (context, state) => const CheckPatient()),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
