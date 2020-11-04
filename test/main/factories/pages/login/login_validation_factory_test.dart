import 'package:test/test.dart';

import 'package:ForDev/validation/validators/validators.dart';
import 'package:ForDev/main/factories/factories.dart';

void main() {
  test('Should return the correct validations', () {
    final validations = makeLoginValidations();

    expect(validations, [
      const RequiredFieldValidation('email'),
      const EmailValidation('email'),
      const RequiredFieldValidation('password'),
      const MinLengthValidation(field: 'password', size: 3)
    ]);
  });
}
