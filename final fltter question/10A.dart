import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
 final String text;
 final VoidCallback onPressed;
 const CustomButton({
 Key? key,
 required this.text,
 required this.onPressed,
 }) : super(key: key);
 @override
 Widget build(BuildContext context) {
 return ElevatedButton(
 onPressed: onPressed,
 style: ElevatedButton.styleFrom(
 backgroundColor: Colors.blue,
 foregroundColor: Colors.white,
 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
 shape: RoundedRectangleBorder(
 borderRadius: BorderRadius.circular(30),
 ),
 ),
 child: Text(
 text,
 style: TextStyle(fontSize: 18),
 ),
 );
 }
}
COUNTER_BUTTON_TEST
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../widgets/CustomButton.dart';
void main() {
 testWidgets('CustomButton displays text and responds to tap', (WidgetTester
tester) async {
 bool buttonTapped = false;
  await tester.pumpWidget(
 MaterialApp(
 home: Scaffold(
 body: CustomButton(
 text: 'Test Button',
 onPressed: () {
 buttonTapped = true;
 },
 ),
 ),
 ),
 );
 final buttonFinder = find.text('Test Button');
 expect(buttonFinder, findsOneWidget);
 await tester.tap(buttonFinder);
 await tester.pump();
 expect(buttonTapped, isTrue);
 });
 testWidgets('CustomButton has correct styling', (WidgetTester tester) async
{
 await tester.pumpWidget(
 MaterialApp(
 home: Scaffold(
 body: CustomButton(
 text: 'Test Button',
 onPressed: () {},
 ),
 ),
 ),
 );
 final buttonFinder = find.byType(ElevatedButton);
 final button = tester.widget<ElevatedButton>(buttonFinder);
 expect(button.style?.backgroundColor?.resolve({}), equals(Colors.blue));
 expect(button.style?.foregroundColor?.resolve({}), equals(Colors.white));
 expect(button.style?.shape?.resolve({}) as RoundedRectangleBorder,
isNotNull);
 final textFinder = find.text('Test Button');
 final text = tester.widget<Text>(textFinder);
 expect(text.stytyle?.shape?.resolve({}) as RoundedRectangleBorder,
isNotNull);
 final textFinder = find.text('Test Button');
 final text = tester.widget<Text>(textFinder);
 expect(text.style?.fontSize, equals(18));
});
}