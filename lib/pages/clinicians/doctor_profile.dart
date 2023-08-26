import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum GenderCharacter { Male, Female }

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  GenderCharacter? _character = GenderCharacter.Male;
  final _dateC = TextEditingController();
  final _timeC = TextEditingController();

  ///Date
  DateTime selected = DateTime.now();
  DateTime initial = DateTime(2000);
  DateTime last = DateTime(2025);

  ///Time
  TimeOfDay timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xffF4F6F5),
              image: DecorationImage(
                  image: AssetImage('assets/doctor_profile.png'),
                  fit: BoxFit.fitHeight),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0.0),
                      child: IconButton(
                          onPressed: () {
                            context.go('/get-started');
                          },
                          icon: const Icon(Icons.arrow_back)),
                    ),
                    const Padding(
                        padding: EdgeInsets.fromLTRB(50, 30, 0, 0.0),
                        child: Image(
                          // height: 50,
                          image: AssetImage('assets/small_logo.png'),
                        )),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'A little about yourself',
                      style: TextStyle(
                        fontFamily: 'gilroy',
                        fontWeight: FontWeight.w500,
                        fontSize: 28,
                        color: Color(0xff1C1F1E),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Dear Carer',
                      style: TextStyle(
                        fontFamily: 'gilroy',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xffA7A6A5),
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(60, 0, 0, 13.22),
                      child: Text(
                        'Your gender',
                        style: TextStyle(
                          fontFamily: 'gilroy',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 162.97,
                          height: 93.25,
                          child: Card(
                            color: const Color(0xffEFF2F1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            child: InkWell(
                              splashColor: Colors.grey,
                              highlightColor: Colors.grey,
                              borderRadius: BorderRadius.circular(18),
                              onTap: () {},
                              child: ListTile(
                                leading: const Image(
                                  image: AssetImage('assets/icon_male.png'),
                                ),
                                subtitle: const Text('Male'),
                                title: Radio<GenderCharacter>(
                                  value: GenderCharacter.Male,
                                  groupValue: _character,
                                  onChanged: (GenderCharacter? value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 162.97,
                          height: 93.25,
                          child: Card(
                              color: const Color(0xffEFF2F1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)),
                              child: InkWell(
                                splashColor: Colors.grey,
                                highlightColor: Colors.grey,
                                borderRadius: BorderRadius.circular(18),
                                onTap: () {},
                                child: ListTile(
                                  leading: const Image(
                                    image: AssetImage('assets/icon_female.png'),
                                  ),
                                  subtitle: const Text('FeMale'),
                                  title: Radio<GenderCharacter>(
                                    value: GenderCharacter.Female,
                                    groupValue: _character,
                                    onChanged: (GenderCharacter? value) {
                                      setState(() {
                                        _character = value;
                                      });
                                    },
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 17.75, 0, 0),
                          child: Text(
                            'Your birthday',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                fontFamily: 'gilroy'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(54, 8.0, 0, 0),
                              child: Text(
                                'Year:',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Inter'),
                              ),
                            ),
                            Builder(builder: (context) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        54, 0.0, 0, 0),
                                    child: SizedBox(
                                      width: 100,
                                      height: 37,
                                      child: TextFormField(
                                        controller: _dateC,
                                        decoration: const InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding: EdgeInsets.zero,
                                            hintText: '23-04-2023',
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 0,
                                                    color: Colors.white))),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        5.0, 0, 0, 0.0),
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white),
                                        ),
                                        onPressed: () =>
                                            displayDatePicker(context),
                                        child: const Text(
                                          'Pick Date',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                  )
                                ],
                              );
                            }),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0.0),
                                  child: Text(
                                    'Your Location',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: 'gilroy',
                                        color: Color(0xff1C1F1E)),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 10, 20, 0.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.zero,
                                          prefixIcon: const Image(
                                            image: AssetImage(
                                                'assets/uk_flag.png'),
                                          ),
                                          suffixIcon: const Image(
                                            image: AssetImage(
                                                'assets/arrow_down.png'),
                                          ),
                                          border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none),
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          filled: true,
                                          fillColor: const Color(0xffEFF2F1),
                                          hintText: "Cardiff, uk"),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0.0),
                                  child: Text(
                                    'Enter your License Number:',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: 'gilroy',
                                        color: Color(0xff1C1F1E)),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 10, 20, 0.0),
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.zero,
                                          border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none),
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          filled: true,
                                          fillColor: const Color(0xffEFF2F1),
                                          hintText: "012345678901"),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0.0),
                                  child: Text(
                                    'National Insurance Number::',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: 'gilroy',
                                        color: Color(0xff1C1F1E)),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 10, 20, 0.0),
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.zero,
                                          border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none),
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          filled: true,
                                          fillColor: const Color(0xffEFF2F1),
                                          hintText: "012345678901"),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0.0),
                                  child: Text(
                                    'Right to work code:',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontFamily: 'gilroy',
                                        color: Color(0xff1C1F1E)),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 10, 20, 0.0),
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.zero,
                                          border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none),
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          filled: true,
                                          fillColor: const Color(0xffEFF2F1),
                                          hintText: "012345678901"),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16, horizontal: 20.0),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            elevation:
                                                MaterialStateProperty.all(0.0),
                                            minimumSize:
                                                MaterialStateProperty.all(
                                                    const Size.square(60)),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    const Color(0xff66CA98)),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(

                                                    // Change your radius here
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)))),
                                        onPressed: () {
                                          context.go('/doctor-auth-code');
                                        },
                                        child: const Text('Continue',
                                            style: TextStyle(
                                                fontFamily: 'quicksand',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20,
                                                color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future displayDatePicker(BuildContext context) async {
    var date = await showDatePicker(
      context: context,
      initialDate: selected,
      firstDate: initial,
      lastDate: last,
    );

    if (date != null) {
      setState(() {
        _dateC.text = date.toLocal().toString().split(" ")[0];
      });
    }
  }
}
