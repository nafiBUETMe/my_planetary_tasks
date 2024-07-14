#include <ros.h>
#include <std_msgs/Int16MultiArray.h>

int ena = 3; // 3
int enb = 2;   // 2
int in1 = 15;  // 15
int in2 = 12;  // 12
int in3 = 11;   // 11
int in4 = 23;   // 23

int rpwm = 7;
int lpwm = 6;

int speed = 100; // spped of movement

ros::NodeHandle nh;

// Define the length of the arrays
const int data_length = 6;
int16_t data_buffer[data_length];

void cmd_cb(const std_msgs::Int16MultiArray &msg) {
  if (msg.data[0] == 0) {
    digitalWrite(in1, LOW);
    digitalWrite(in2, LOW);
    // Set the motor speed (absolute speed)
    analogWrite(ena, abs(speed));
  }
  // Platform up
  if (msg.data[0] == 1) {
    digitalWrite(in1, LOW);
    digitalWrite(in2, HIGH);
    // Set the motor speed (absolute speed)
    analogWrite(ena, abs(speed));
  }
  // Platform down
  if (msg.data[0] == -1) {
    digitalWrite(in1, HIGH);
    digitalWrite(in2, LOW);
        // Set the motor speed (absolute speed)
    analogWrite(ena, abs(speed));
  }
  
  if (msg.data[1] == 1) {
    digitalWrite(in3, LOW);
    digitalWrite(in4, HIGH);
    // Set the motor speed (absolute speed)
    analogWrite(enb, abs(speed));
  }
  if (msg.data[1] == -1) {
    digitalWrite(in3, HIGH);
    digitalWrite(in4, LOW);
    // Set the motor speed (absolute speed)
    analogWrite(enb, abs(speed));
  }
  if (msg.data[1] == 0) {
    digitalWrite(in3, LOW);
    digitalWrite(in4, LOW);
    // Set the motor speed (absolute speed)
    analogWrite(enb, abs(speed));
  }

  // bts 
  if (msg.data[2] == 1) {
    analogWrite(rpwm, 150);
    analogWrite(lpwm, 0);
  }

  if (msg.data[2] == 0) {
    analogWrite(rpwm, 0);
    analogWrite(lpwm, 0);
  }
}



ros::Subscriber<std_msgs::Int16MultiArray> sub("science_control", &cmd_cb);

void setup() {
  nh.initNode();
  nh.subscribe(sub);

  pinMode(ena, OUTPUT);
  pinMode(enb, OUTPUT);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);
  pinMode(in3, OUTPUT);
  pinMode(in4, OUTPUT);
  pinMode(rpwm, OUTPUT);
  pinMode(lpwm, OUTPUT);

  digitalWrite(in1, LOW);
  digitalWrite(in2, LOW);
  digitalWrite(in3, LOW);
  digitalWrite(in4, LOW);
  digitalWrite(rpwm, LOW);
  digitalWrite(lpwm, LOW);
  // might need to set the baud rate
}

void loop() {
  nh.spinOnce();
  delay(10);
}
