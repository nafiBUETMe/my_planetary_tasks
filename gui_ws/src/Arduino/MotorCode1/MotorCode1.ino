#include <ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Int32.h>

int ena = 5;
int in1 = 8;
int in2 = 9;

int status = 0; // 0 for cw & 1 for ccw

ros::NodeHandle nh;

void motorCallback(const std_msgs::Int32& rec_msg) {
  int i = rec_msg.data;
  if (i == 0) {
    digitalWrite(in1, LOW);
    digitalWrite(in2, LOW);
  }
  else {
    if (status == 0) {
      digitalWrite(in1, LOW);
      digitalWrite(in2, HIGH);
    } else if (status == 1) {
      digitalWrite(in1, HIGH);
      digitalWrite(in2, LOW);
    }
  }
}


void statusCallback(const std_msgs::String& msg) {
  char command = msg.data[0];
  if (command == 'c') {
    status = 0;  // Clockwise
  } else if (command == 'a') {
    status = 1;  // Counter-clockwise
  }
  // Update motor direction based on the new status
  std_msgs::Int32 motor_cmd;
  motor_cmd.data = 1;
  motorCallback(motor_cmd);
}

void pwmCall(const std_msgs::Int32& rec_msg) {
  int i = rec_msg.data;
  analogWrite(ena, i);
}

ros::Subscriber<std_msgs::Int32> motorSub("/motor1", &motorCallback);
ros::Subscriber<std_msgs::String> statusSub("/motor1Status", &statusCallback);
ros::Subscriber<std_msgs::Int32> pwm_value("/pwm", &pwmCall);

void setup()
{
  nh.initNode();
  nh.subscribe(motorSub);
  nh.subscribe(statusSub);
  nh.subscribe(pwm_value);

  pinMode(ena, OUTPUT);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);

  digitalWrite(in1, LOW);
  digitalWrite(in2, LOW);
  // might need to set the baud rate
}

void loop()
{
  nh.spinOnce();

  delay(15);
}
