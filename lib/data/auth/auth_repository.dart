class AppUser {
  final String name;
  final String email;
  final String role;
  final String initials;
  final String profileImage;

  const AppUser({
    required this.name,
    required this.email,
    required this.role,
    required this.initials,
    required this.profileImage,
  });
}

class AuthRepository {
  static const users = <String, Map<String, String>>{
    'isaac@gmail.com': {
      'password': '1234',
      'name': 'Isaac',
      'role': 'Estudiante',
      'initials': 'IS',
      'profileImage': 'assets/images/isaac_profile.jpg',
    },
    'ivan@gmail.com': {
      'password': '1234',
      'name': 'Ivan',
      'role': 'Profesor',
      'initials': 'IV',
      'profileImage': 'assets/images/ivan_profile.jpg',
    },
    'ricorico@gmail.com': {
      'password': '1234',
      'name': 'Rico Rico',
      'role': 'Estudiante',
      'initials': 'RR',
      'profileImage': 'assets/images/rico_profile.jpg',
    },
  };

  AppUser? currentUser;

  AppUser? login(String email, String password) {
    final userData = users[email.trim().toLowerCase()];
    if (userData == null || userData['password'] != password) {
      return null;
    }

    currentUser = AppUser(
      name: userData['name']!,
      email: email.trim().toLowerCase(),
      role: userData['role']!,
      initials: userData['initials']!,
      profileImage: userData['profileImage']!,
    );
    return currentUser;
  }

  void logout() => currentUser = null;
}

final authRepository = AuthRepository();
