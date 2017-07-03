int SensorINPUT=3;
int SensorLED=11;
unsigned char state=0;
void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
pinMode(SensorINPUT,INPUT);
pinMode(SensorLED,OUTPUT);
attachInterrupt(1,blink,RISING);
}

void loop() {
  // put your main code here, to run repeatedly:
//Serial.println(valt);
if(state!=0){
  state=0;
 digitalWrite(SensorLED,LOW);
  Serial.write(1);
 delay(32);
}

else{
  digitalWrite(SensorLED,HIGH);
}
}

void blink(){
  state++;
}

