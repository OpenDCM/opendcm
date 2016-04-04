
#include <SPI.h>  // include the SPI library

/*
 * Reading measurements from LTC2440 and compatible ADCs from Linear Technology.
 *
 * Everyone is permitted to copy, distribute, modify or to be used for commercial usage.
 *
 * The software is provided "as is", without warranty of any kind.
 */

// Based on Pro Micro Arduino board
const byte cs_pin = 6;  // digital pin 27 for CS
const byte busy_pin = 3;  // digital pin 18 for BUSY

// Connect Pro micro to PC with RS232 to USB adapter and using cutecom program, a log file can be saved. 

bool showDetailInfo = false;

bool adc_error = false;

void setup() {

  // Setup USART 9600 baud, 8 bit, 1 stop bit
  Serial1.begin(9600);

  // Setup uController pin for connection to the ADC BUSY pin
  pinMode (busy_pin, INPUT);
  // Setup uController pin for connection to the ADC CS pin
  pinMode (cs_pin, OUTPUT);
  // Set to high level
  digitalWrite(cs_pin, HIGH);

  // Initialize SPI
  SPI.begin();
  // Setup MSB first
  SPI.setBitOrder(MSBFIRST);
  // SPI clock = uController clock / 128
  SPI.setClockDivider(SPI_CLOCK_DIV128);

  Serial1.println("Open source DC multimeter");
  Serial1.println("Breadboard firmware");

}

// Macros for turn off/on
//TXLED1; green LED on
//TXLED0; green LED off
//RXLED1; yellow LED on
//RXLED0; yellow LED off

void loop() {

  // incoming serial 32-bit word from the ADC
  unsigned long adc_out = 0;         

  // Turn off LED
  RXLED0;

  // Check if ADC is BUSY (measurement is finished)
  int is_busy = digitalRead(busy_pin);
  if (is_busy == LOW)
  {
    // Turn on LED
    RXLED1;

    adc_error = false;
    // Read 24 Bit data
    adc_out = SpiRead();

    // check for error
    if (adc_error == false) {

      if (Serial1.available() != 0) {
        int cmd = Serial1.read();
        if (cmd == 100) {
          // Disable showing detail info with "d"
          showDetailInfo = false;
        }else if (cmd = 101){
          // Enable showing detail info with "e"
          showDetailInfo = true;
        }

      }

      if (showDetailInfo) {

        Serial1.print("ADC code : ");
        Serial1.print(adc_out);

        Serial1.print(" , ");

      }

      // Convert ADC code to voltage measurement
      float uVolts =  adc_out * 0.149011612;
  
      if (showDetailInfo) {
        Serial1.print(uVolts);
        Serial1.print(" uV");
      }else{
	// Usefull for showing results direct in the gnuplot with the following command:
	// plot '/tmp/cutecom.log' w lines
        Serial1.println(uVolts);
      }

      if (showDetailInfo) {

        // The constant 0.149xxx is calculated as Vref (in uV) 2500000/ 16777216 (24 bits).
        // Using float, gives ~6-9 significant digits. This is not enough for 24 bit measurement
        // The trick is to use uV and tp convert later into Volts.
        // For example : 2.5/16777216 = 0.000000149 for float
        // When the ADC code is 16777216, the result is 2.499805184. instead 2.5
        // Using constant 0.149011612 will give 2500000.00(1032192) uV

        // convert uV to V
        String volts = convert_uV_to_V(uVolts);

        volts += String(" V");
        Serial1.print(", ");
        Serial1.println(volts);
        
      }
    
      delay(1);
      // Start next measurement
      digitalWrite(cs_pin, HIGH);


    }

  }

}

unsigned long SpiRead(void) {

  unsigned long result = 0;

  // Set the CS pin low to start reading measurement
  digitalWrite(cs_pin, LOW);
  delayMicroseconds(1);

  byte b3 = SPI.transfer(0xff);   // Byte 3
  byte b2 = SPI.transfer(0xff);   // Byte 2
  byte b1 = SPI.transfer(0xff);   // Byte 1
  byte b0 = SPI.transfer(0xff);   // Byte 0

  unsigned long first4Bits;
  first4Bits = b3 >> 4;

  adc_error = false;

  switch (first4Bits) {
    case 0:
      Serial1.println("Input voltage is under the minimum allowed voltage reference.");
      Serial1.println(addLeadingZeros(b3));
      adc_error = true;
      return (0);
    case 1:
      Serial1.println("Negative voltage is detected.");
      adc_error = true;
      break;
    case 2:
      // Positive signal within voltage reference
      break;
    case 3:
      Serial1.println("Input voltage is over the maximum allowed voltage reference.");
      Serial1.println(addLeadingZeros(b3));
      adc_error = true;
      return (0);
  }

  result = b3 << 8;
  result |= b2;
  result = result << 8;
  result |= b1;
  result = result << 8;
  result |= b0;

  // Clear the first 3 bits with zero
  result &= 0x1FFFFFFF;
  // Removing the last 5 bits
  result = result >> 5;

  return (result);
}

String convert_uV_to_V(float uVolts)
{

  String dVolts = "";
  String uVoltStr = String(uVolts);
  int len = uVoltStr.length();
  bool dotFound = false;
  int shiftCount = 0;
  bool isDotPlaced = false;

  String volts = "";

  // Find the dot from the end of the string
  for (int index = len - 1; index >= 0; index--) {

    char ch = uVoltStr.charAt(index);

    if (dotFound) {
      shiftCount++;
    }
    if (ch == '.') {
      dotFound = true;
      continue;
    }
    dVolts += String(ch);
  }

  if (shiftCount < 7) {

    for (int i = 0; i < (6 - shiftCount); i++) {
      dVolts += String("0");
    }

    dVolts += String(".");
    dVolts += String("0");

    // Reverse the string
    int len1 = dVolts.length();
    for (int index = len1 - 1; index >= 0; index--) {
      char ch = dVolts.charAt(index);
      volts += String(ch);
    }

  } else {
    // not yet implemented when measerment is greater then 1.0V
  }

  return (volts);

}

String addLeadingZeros(byte value)
{
  int zeros = 8 - String(value, BIN).length();
  String returnValue = "";
  for (int i = 0; i < zeros; i++) {
    returnValue += "0";
  }
  returnValue += String(value, BIN);
  return returnValue;
}

