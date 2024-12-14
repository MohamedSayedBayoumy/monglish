abstract class ApiEndpoints {
  static const baseUrl = "https://monglishtest.fekracomputers.net/api/";

  static const login = "login";
  static String dashboard(studentId) => "students/$studentId";
}
