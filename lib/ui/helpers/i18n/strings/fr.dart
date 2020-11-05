import 'translation.dart';

class Fr implements Translation {
  @override
  String get msgEmailInUse => "L'e-mail est déjà utilisé.";

  @override
  String get msgInvalidCredentials => 'Des références non valables.';

  @override
  String get msgInvalidField => 'Champ non valable';

  @override
  String get msgRequiredField => 'Champ obligatoire';

  @override
  String get msgUnexpectedError =>
      'Quelque chose de mal est arrivé. Essayez de nouveau bientôt.';

  @override
  String get addAccount => 'Créer un compte';

  @override
  String get confirmPassword => 'Confirmer le mot de passe';

  @override
  String get email => 'Email';

  @override
  String get enter => 'Entrez';

  @override
  String get login => 'Connexion';

  @override
  String get name => 'Nom';

  @override
  String get password => 'Mot de passe';

  @override
  String get reload => 'Recharger';

  @override
  String get surveys => 'Sondage';

  @override
  String get surveyResult => 'Résultat du sondage';

  @override
  String get wait => 'Attendez...';
}
