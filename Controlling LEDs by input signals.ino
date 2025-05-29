const int inputPin1 = 11; // Первый входной пин
const int inputPin2 = 12; // Второй входной пин

const int ledPin1 = 9;    // Пин светодиода 1
const int ledPin2 = 10;   // Пин светодиода 2
const int ledPin3 = 13;   // Пин светодиода 3

void setup() {
  pinMode(inputPin1, INPUT_PULLUP); // Устанавливаем пины входными с подтяжкой
  pinMode(inputPin2, INPUT_PULLUP);

  pinMode(ledPin1, OUTPUT); // Устанавливаем пины светодиодов как выходные
  pinMode(ledPin2, OUTPUT);
  pinMode(ledPin3, OUTPUT);

  Serial.begin(9600); // Запускаем последовательный порт
  Serial.println("Ожидание сигнала...");
}

void loop() {
  // Читаем значения с пинов 11 и 12
  int value1 = digitalRead(inputPin1); // 0 или 1
  int value2 = digitalRead(inputPin2); // 0 или 1

  // Формируем двоичное число
  int binaryNumber = (value1 * 2) + value2;

  // Выводим двоичное число в монитор порта
  Serial.print("Двоичное число: ");
  Serial.println(binaryNumber);

  // Обрабатываем двоичное число
  if (binaryNumber == 1) {
    digitalWrite(ledPin1, HIGH);  // Включаем светодиод 1
    digitalWrite(ledPin2, LOW);   // Выключаем светодиод 2
    digitalWrite(ledPin3, LOW);   // Выключаем светодиод 3
  } else if (binaryNumber == 2) {
    digitalWrite(ledPin1, LOW);   // Выключаем светодиод 1
    digitalWrite(ledPin2, HIGH);  // Включаем светодиод 2
    digitalWrite(ledPin3, LOW);   // Выключаем светодиод 3
  } else if (binaryNumber == 3) {
    digitalWrite(ledPin1, LOW);   // Выключаем светодиод 1
    digitalWrite(ledPin2, LOW);   // Выключаем светодиод 2
    digitalWrite(ledPin3, HIGH);  // Включаем светодиод 3
  } else {
    digitalWrite(ledPin1, LOW);   // Выключаем все светодиоды
    digitalWrite(ledPin2, LOW);
    digitalWrite(ledPin3, LOW);
  }

  delay(500); // Задержка для стабильности
}