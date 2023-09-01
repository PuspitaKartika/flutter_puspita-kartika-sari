// no 1
class Calculator {
  void penjumlahan(double angka1, double angka2) {
    double hasil = angka1 + angka2;
    print("Hasil penjumalahan : $hasil");
  }

  void pengurangan(double angka1, double angka2) {
    double hasil = angka1 - angka2;
    print("Hasil pengurangan : $hasil");
  }

  void perkalian(double angka1, double angka2) {
    double hasil = angka1 * angka2;
    print("Hasil perkalian : $hasil");
  }

  void pembagian(double angka1, double angka2) {
    double hasil = angka1 / angka2;
    print("Hasil pembagian : $hasil");
  }
}

// no 2
class Course {
  String title;
  String description;

  Course(this.title, this.description);
}

class Student {
  String name;
  String className;
  List<Course> courses = [];

  Student(this.name, this.className);

  void addCourse(Course course) {
    courses.add(course);
  }

  void removeCourse(Course course) {
    courses.remove(course);
  }

  void viewCourses() {
    if (courses.isEmpty) {
      print("\nTidak ada course untuk saat ini");
    } else {
      print("\nCourses:");
      for (var i = 0; i < courses.length; i++) {
        print("${i + 1}. ${courses[i].title} - ${courses[i].description}");
      }
    }
  }
}

void main() {
  Calculator soal = Calculator();
  soal.penjumlahan(10, 3);
  soal.pengurangan(10, 3);
  soal.perkalian(10, 3);
  soal.pembagian(10, 3);

  //course
  Course course1 = Course("Kalkulus",
      "ilmu yang mempelajari perubahan, sebagaimana geometri yang mempelajari bentuk dan aljabar yang mempelajari operasi dan penerapannya");
  Course course2 = Course("fisika",
      "sains atau ilmu alam yang mempelajari materi beserta gerak dan perilakunya dalam lingkup ruang dan waktu");

  Student puspita = Student("Puspita", "IF 09 B");
  puspita.viewCourses();
  puspita.addCourse(course1);
  puspita.viewCourses();
  puspita.addCourse(course2);
  puspita.viewCourses();
  puspita.removeCourse(course1);
  puspita.viewCourses();
}
