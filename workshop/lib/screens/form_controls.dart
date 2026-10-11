import 'package:flutter/material.dart';

class FormControlProgram extends StatefulWidget{
  const FormControlProgram({super.key});

  @override
  State<FormControlProgram> createState()=>_FormControlProgramState();


}
class _FormControlProgramState extends State<FormControlProgram>{
  final TextEditingController nameController = TextEditingController();
  String gender='Male';
  bool isStudent=false;
  bool reading=false;
  bool sports=false;
  bool music=false;
  String selectedCourse=  'Flutter';

  void submitForm(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:(context)=>FormResultPage(
          name:nameController.text,
          gender:gender,
          isStudent:isStudent,
          reading:reading,
          sports:sports,
          music:music,
          selectedCourse:selectedCourse,
        ),
      ),
    );
  }

  @override
  void dispose(){
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text('Form Control Program'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child:Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[
            const Text(
              "Name:",
              style:TextStyle(
                fontSize:18,
                fontWeight:FontWeight.bold,
              ),
            ),
            const SizedBox(height:10),
            TextField(
              controller:nameController,
              decoration: const InputDecoration(
                labelText:"Enter your name",
                hintText:"Enter Name",
                border:OutlineInputBorder(),
              ),
            ),
            const SizedBox(height:25),
            const Text(
              'Gender',
              style:TextStyle(
                fontSize:18,
                fontWeight:FontWeight.bold,
              ),
            ),
            RadioListTile<String>(
              title:const Text('Male'),
              value:"Male",
              groupValue:gender,
              onChanged:(value){
                setState((){
                  gender=value !;
                });
              
              },
            ),

              RadioListTile<String>(
              title:const Text('Female'),
              value:"Female",
              groupValue:gender,
              onChanged:(value){
                setState((){
                  gender=value !;
                });
              
              },
            ),

            const SizedBox(height:20),
            CheckboxListTile(
              title: const Text(
                "Iam a Student",
                style:TextStyle(
                  fontSize:16,
                ),
              ),
              value: isStudent,
              onChanged:(value){
                setState((){
                  isStudent=value !;
                });
              },
            ),
            const SizedBox(height:20),
            const Text(
              'Hobbies',
              style:TextStyle(
                fontSize:18,
                fontWeight:FontWeight.bold,
              ),
            ),

            CheckboxListTile(
              title: const Text('Sports'),
              value:sports,
              onChanged:(value){
                setState((){
                  sports=value !;
                });
              },
            ),

            CheckboxListTile(
              title: const Text('Reading'),
              value:reading,
              onChanged:(value){
                setState((){
                  reading=value !;
                });
              },
            ),
            
          CheckboxListTile(
              title: const Text('Music'),
              value:music,
              onChanged:(value){
                setState((){
                  music=value !;
                });
              },
            ),

            const SizedBox(height:20),
            const Text(
              'Select Course',
              style:TextStyle(
                fontSize:18,
                fontWeight:FontWeight.bold,
              ),
            ),
            const SizedBox(height:10),
            DropdownButton<String>(
              value:selectedCourse,
              items:[
                DropdownMenuItem( value:'Flutter',child:Text('Flutter')),
                DropdownMenuItem(value:'React',child:Text('React')),
                DropdownMenuItem(value:'Angular',child:Text('Angular')),
                DropdownMenuItem(value:'Vue',child:Text('Vue'))
              ],
              onChanged:(value){
                setState((){
                  selectedCourse=value !;
                });
              },
            ),

            const SizedBox(height:30),
            Center(
              child:SizedBox(
                width:200,
                height:55,
                child:ElevatedButton(
                  onPressed:submitForm,
                  child:const Text(
                    'Submit',
                    style:TextStyle(fontSize:18),
                  ),
                ),
              ),
            ),

            const SizedBox(height:20),

          ],
        ),
      ),
    );
  }
}


class FormResultPage extends StatelessWidget{
  final String name;
  final String gender;
  final bool isStudent;
  final bool sports;
  final bool reading;
  final bool music;
  final String selectedCourse;

  const FormResultPage({
    super.key,
    required this.name,
    required this.gender,
    required this.isStudent,
    required this.sports,
    required this.reading,
    required this.music,
    required this.selectedCourse,

  });

  @override
  Widget build(BuildContext context){
    List<String> selectedHobbies=[];
    if (reading) selectedHobbies.add('Reading');
    if (sports) selectedHobbies.add('Sports');
    if (music) selectedHobbies.add('Music');

    return Scaffold(
      appBar:AppBar(
        title:const Text(
          'Form Result',
          style:TextStyle(fontSize:20),
        ),
      ),
      body :  Padding(
        padding:const EdgeInsets.all(20),
        child:Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[
            Text(
              'Name: $name',
              style:const TextStyle(fontSize:18),
            ),
            const SizedBox(height:10),
            Text(
              'Gender: $gender',
              style:const TextStyle(fontSize:18),
            ),
            const SizedBox(height:10),
            Text(
              'Student: ${isStudent ? "Yes" : "No"}',
              style:const TextStyle(fontSize:18),
            ),
            const SizedBox(height:10),
            Text(
              'Hobbies: ${selectedHobbies.join(", ")}',
              style:const TextStyle(fontSize:18),
            ),
            const SizedBox(height:10),
            Text(
              'Selected Course: $selectedCourse',
              style:const TextStyle(fontSize:18),
            ),
          ],
        ),
      ), 
    );
    
}
}
