import 'package:test/test.dart';

import 'package:ForDev/validation/validators/validators.dart';
import 'package:ForDev/main/factories/factories.dart';

void main() {
  test('Should return the correct validations', () {
    final validations = makeSignUpValidations();

    expect(validations, [
      const RequiredFieldValidation('name'),
      const MinLengthValidation(field: 'name', size: 3),
      const RequiredFieldValidation('email'),
      const EmailValidation('email'),
      const RequiredFieldValidation('password'),
      const MinLengthValidation(field: 'password', size: 3),
      const RequiredFieldValidation('passwordConfirmation'),
      const CompareFieldsValidation(
          field: 'passwordConfirmation', fieldToCompare: 'password')
    ]);
  });
}
