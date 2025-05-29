#include <GyverOLED.h>
GyverOLED<SSD1306_128x64, OLED_NO_BUFFER> oled;

const int maxInputLength = 64; // Максимальная длина строки
char incomingData[maxInputLength]; // Буфер для входных данных
int dataIndex = 0;

void setup() {
  Serial.begin(9600); // Инициализация последовательного порта

  oled.init(); // Можно указать адрес: oled.init(0x3C) или oled.init(0x3D)
  oled.clear();
  oled.setScale(3);
  oled.home();
  oled.print("Привет!");
  
  delay(1000);

  oled.setScale(1);
  oled.setCursor(0, 3);
  oled.print("GyverOLED v1.3.2");

  oled.setCursorXY(20, 50);
  float pi = 3.14;
  oled.print("PI = ");
  oled.print(pi);

  delay(2000);
  oled.clear();

  // Инструкция
  oled.setCursor(0, 0);
  oled.print("Введите текст:");
  oled.setCursor(0, 2);
}

void loop() {
  while (Serial.available() > 0) {
    char c = Serial.read();

    if (c == '\n') { // Если нажата Enter
      incomingData[dataIndex] = '\0'; // Завершаем строку

      oled.clear();
      oled.setCursor(0, 0);
      oled.print("Вы ввели:");
      oled.setCursor(0, 2);
      oled.print(incomingData);

      dataIndex = 0; // Сброс индекса
    } else {
      if (dataIndex < maxInputLength - 1) {
        incomingData[dataIndex++] = c;
      }
    }
  }
}
