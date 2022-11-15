
volatile unsigned int temp, counter = 0; //This variable will increase or decrease depending on the rotation of encoder
long oldPosition  = -999; 
float dPos;
float dTheta;

unsigned long newTime;
unsigned long oldTime = 0;

unsigned long dt = 0;

float angularSpeed;
float linearSpeed;
float r = 0.1;
float newspeed;
float oldspeed;
float acc;
float dspeed;


void setup() {
  Serial.begin (9600);

  pinMode(2, INPUT_PULLUP); // internal pullup input pin 2 
  
  pinMode(3, INPUT_PULLUP); // internalเป็น pullup input pin 3
//Setting up interrupt
  //A rising pulse from encodenren activated ai0(). AttachInterrupt 0 is DigitalPin nr 2 on moust Arduino.
  attachInterrupt(0, ai0, RISING);
   
  //B rising pulse from encodenren activated ai1(). AttachInterrupt 1 is DigitalPin nr 3 on moust Arduino.
  attachInterrupt(1, ai1, RISING);
  }
   
  void loop() {
  // Send the value of counter
  long newPosition = counter;  
  if (newPosition != oldPosition) {         // If there has been a change in position from the previous position, if statement is excecuted.
    dPos = abs(newPosition - oldPosition);  // The difference in position between the old and new values is taken.
    oldPosition = newPosition;              // The old position is equated to the new position for the next iteration of the loop.
    newTime = millis();                     // The current millis time value is taken.
    dTheta = dPos*0.3;           // The positional count data is converted into radians. With 50 pulses per revolution, and 4 counts per pulse,
                                            // there are 200 counts per revolution. This equates to 1.8 degrees, or 0.031415927 radians or arc per count.
    dt = (newTime - oldTime);               // The difference in time is taken.
    oldTime = newTime;
    
                                          
                                            
                                            
                                            
                                            
                                            // The old time value is equated to the new time value for the next iteration of the loop.
    angularSpeed = (dTheta / dt)*1000;      // The angular speed in rad/s is calculated.
                                            // The linear speed is calculated in m/s.

    newspeed = angularSpeed*r;
    dspeed =  abs(newspeed - oldspeed);
    oldspeed =   newspeed;
    acc =  dspeed/dt;


    
    Serial.println( angularSpeed);
    Serial.println( acc);
    delay(100);
  }
  }
   
  void ai0() {
  // ai0 is activated if DigitalPin nr 2 is going from LOW to HIGH
  // Check pin 3 to determine the direction
  if(digitalRead(3)==LOW) {
  counter++;
  }else{
  counter--;
  }
  }
   
  void ai1() {
  // ai0 is activated if DigitalPin nr 3 is going from LOW to HIGH
  // Check with pin 2 to determine the direction
  if(digitalRead(2)==LOW) {
  counter--;
  }else{
  counter++;
  }
  }
