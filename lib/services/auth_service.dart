class AuthService {
  static final List<Map<String, String>> _mockUsers = [
    {
      'email': 'john@example.com',
      'password': '123456',
      'name': 'John Doe',
    },
    {
      'email': 'admin@wallet.com',
      'password': 'admin123',
      'name': 'Admin User',
    },
    {
      'email': 'test@test.com',
      'password': 'test123',
      'name': 'Test User',
    },
  ];

  static Future<Map<String, dynamic>> login(String email, String password) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    // Find user in mock data
    final user = _mockUsers.firstWhere(
      (user) => user['email'] == email && user['password'] == password,
      orElse: () => {},
    );

    if (user.isNotEmpty) {
      return {
        'success': true,
        'user': {
          'email': user['email'],
          'name': user['name'],
        },
      };
    } else {
      return {
        'success': false,
        'message': 'Invalid email or password',
      };
    }
  }

  static Future<bool> logout() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return true;
  }
}