// C++ 

#include <iostream>
#include <string>

int main() {
    std::string name;
    int alter;

    std::cout << "==================================" << std::endl;
    std::cout << "   C++ Umgebungs-Testprogramm   " << std::endl;
    std::cout << "==================================" << std::endl;

    // Eingabe
    std::cout << "Wie heisst du? ";
    std::cin >> name;

    std::cout << "Wie alt bist du? ";
    std::cin >> alter;

    // Berechnungen
    int aktuellesJahr = 2026;
    int jahrHundert = aktuellesJahr + (100 - alter);

    // Ausgabe
    std::cout << "\nHallo " << name << "! C++ funktioniert einwandfrei." << std::endl;
    std::cout << "Du wirst im Jahr " << jahrHundert << " 100 Jahre alt!" << std::endl;

    return 0;
}
