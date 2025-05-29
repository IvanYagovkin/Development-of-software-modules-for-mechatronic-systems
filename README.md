**Инициализация OLED-дисплея**
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, -1);

void setup() {
  Serial.begin(9600);
  if (!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) {
    for (;;); // Если дисплей не найден — зависаем
  }
  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(SSD1306_WHITE);
  display.setCursor(0, 0);
  display.println("Ожидание сигнала...");
  display.display();
}
**Чтение данных из последовательного порта и вывод на дисплей**
char incomingData[64];
int dataIndex = 0;

void loop() {
  while (Serial.available() > 0) {
    char c = Serial.read();

    if (c == '\n') {
      incomingData[dataIndex] = '\0';
      display.clearDisplay();
      display.setCursor(0, 0);
      display.println("Получено:");
      display.setCursor(0, 20);
      display.println(incomingData);
      display.display();
      dataIndex = 0;
    } else {
      if (dataIndex < 63) {
        incomingData[dataIndex++] = c;
      }
    }
  }
}
**Управление светодиодами по двум входным сигналам**
const int inputPin1 = 11;
const int inputPin2 = 12;
const int ledPin1 = 9;
const int ledPin2 = 10;
const int ledPin3 = 13;

void loop() {
  int value1 = digitalRead(inputPin1);
  int value2 = digitalRead(inputPin2);
  int binaryNumber = value1 * 2 + value2;
  switch(binaryNumber) {
    case 1:
      digitalWrite(ledPin1, HIGH);
      digitalWrite(ledPin2, LOW);
      digitalWrite(ledPin3, LOW);
      break;
    case 2:
      digitalWrite(ledPin1, LOW);
      digitalWrite(ledPin2, HIGH);
      digitalWrite(ledPin3, LOW);
      break;
    case 3:
      digitalWrite(ledPin1, LOW);
      digitalWrite(ledPin2, LOW);
      digitalWrite(ledPin3, HIGH);
      break;
    default:
      digitalWrite(ledPin1, LOW);
      digitalWrite(ledPin2, LOW);
      digitalWrite(ledPin3, LOW);
  }
  delay(500);
}
