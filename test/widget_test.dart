// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:app_form/main.dart';
import 'package:app_form/data/auth/auth_repository.dart';

void main() {
  testWidgets('Muestra el formulario de login', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Bienvenido'), findsOneWidget);
    expect(find.text('Correo electrónico'), findsOneWidget);
    expect(find.text('Contraseña'), findsOneWidget);
    expect(find.text('Ingresar'), findsOneWidget);
  });

  testWidgets('Valida campos obligatorios del login', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Ingresar'));
    await tester.pump();

    expect(find.text('Ingresa tu correo electrónico'), findsOneWidget);
    expect(find.text('Ingresa tu contraseña'), findsOneWidget);
  });

  test('Valida los tres usuarios del mapa local', () {
    for (final email in [
      'isaac@gmail.com',
      'ivan@gmail.com',
      'ricorico@gmail.com',
    ]) {
      expect(authRepository.login(email, '1234'), isNotNull);
    }

    authRepository.logout();
  });
}
