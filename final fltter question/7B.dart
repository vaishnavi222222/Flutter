ElevatedButton(
 child: Text('Submit'),
 onPressed: () {
 if (_formKey.currentState!.validate()) {
 _formKey.currentState!.save();
 // Process the form data
 print('Name: $_name');
 print('Email: $_email');
 print('Password: $_password');
 print('Subscribe: $_subscribe');
 print('Gender: $_gender');
 }
 },
 ), 