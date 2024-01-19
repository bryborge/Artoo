#include <SabertoothSimplified.h>

SabertoothSimplified ST;

void setup() {
  Serial.begin(9600);
}

void loop() {
  ST.motor(1, 5);
  delay(2000);
  ST.motor(1, 0);
  delay(2000);
}
