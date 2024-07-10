; Auto-generated. Do not edit!


(cl:in-package prochesta_arm_motion-srv)


;//! \htmlinclude JointSrv-request.msg.html

(cl:defclass <JointSrv-request> (roslisp-msg-protocol:ros-message)
  ((req
    :reader req
    :initarg :req
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointSrv-request (<JointSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name prochesta_arm_motion-srv:<JointSrv-request> is deprecated: use prochesta_arm_motion-srv:JointSrv-request instead.")))

(cl:ensure-generic-function 'req-val :lambda-list '(m))
(cl:defmethod req-val ((m <JointSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prochesta_arm_motion-srv:req-val is deprecated.  Use prochesta_arm_motion-srv:req instead.")
  (req m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointSrv-request>) ostream)
  "Serializes a message object of type '<JointSrv-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'req))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointSrv-request>) istream)
  "Deserializes a message object of type '<JointSrv-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'req) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointSrv-request>)))
  "Returns string type for a service object of type '<JointSrv-request>"
  "prochesta_arm_motion/JointSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointSrv-request)))
  "Returns string type for a service object of type 'JointSrv-request"
  "prochesta_arm_motion/JointSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointSrv-request>)))
  "Returns md5sum for a message object of type '<JointSrv-request>"
  "d421f3b0a197945d8b29bba5c6341ea9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointSrv-request)))
  "Returns md5sum for a message object of type 'JointSrv-request"
  "d421f3b0a197945d8b29bba5c6341ea9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointSrv-request>)))
  "Returns full string definition for message of type '<JointSrv-request>"
  (cl:format cl:nil "float32 req~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointSrv-request)))
  "Returns full string definition for message of type 'JointSrv-request"
  (cl:format cl:nil "float32 req~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JointSrv-request
    (cl:cons ':req (req msg))
))
;//! \htmlinclude JointSrv-response.msg.html

(cl:defclass <JointSrv-response> (roslisp-msg-protocol:ros-message)
  ((joint1
    :reader joint1
    :initarg :joint1
    :type cl:float
    :initform 0.0)
   (joint2
    :reader joint2
    :initarg :joint2
    :type cl:float
    :initform 0.0)
   (joint3
    :reader joint3
    :initarg :joint3
    :type cl:float
    :initform 0.0)
   (joint4
    :reader joint4
    :initarg :joint4
    :type cl:float
    :initform 0.0)
   (joint5
    :reader joint5
    :initarg :joint5
    :type cl:float
    :initform 0.0)
   (joint6
    :reader joint6
    :initarg :joint6
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointSrv-response (<JointSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name prochesta_arm_motion-srv:<JointSrv-response> is deprecated: use prochesta_arm_motion-srv:JointSrv-response instead.")))

(cl:ensure-generic-function 'joint1-val :lambda-list '(m))
(cl:defmethod joint1-val ((m <JointSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prochesta_arm_motion-srv:joint1-val is deprecated.  Use prochesta_arm_motion-srv:joint1 instead.")
  (joint1 m))

(cl:ensure-generic-function 'joint2-val :lambda-list '(m))
(cl:defmethod joint2-val ((m <JointSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prochesta_arm_motion-srv:joint2-val is deprecated.  Use prochesta_arm_motion-srv:joint2 instead.")
  (joint2 m))

(cl:ensure-generic-function 'joint3-val :lambda-list '(m))
(cl:defmethod joint3-val ((m <JointSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prochesta_arm_motion-srv:joint3-val is deprecated.  Use prochesta_arm_motion-srv:joint3 instead.")
  (joint3 m))

(cl:ensure-generic-function 'joint4-val :lambda-list '(m))
(cl:defmethod joint4-val ((m <JointSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prochesta_arm_motion-srv:joint4-val is deprecated.  Use prochesta_arm_motion-srv:joint4 instead.")
  (joint4 m))

(cl:ensure-generic-function 'joint5-val :lambda-list '(m))
(cl:defmethod joint5-val ((m <JointSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prochesta_arm_motion-srv:joint5-val is deprecated.  Use prochesta_arm_motion-srv:joint5 instead.")
  (joint5 m))

(cl:ensure-generic-function 'joint6-val :lambda-list '(m))
(cl:defmethod joint6-val ((m <JointSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader prochesta_arm_motion-srv:joint6-val is deprecated.  Use prochesta_arm_motion-srv:joint6 instead.")
  (joint6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointSrv-response>) ostream)
  "Serializes a message object of type '<JointSrv-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointSrv-response>) istream)
  "Deserializes a message object of type '<JointSrv-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint6) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointSrv-response>)))
  "Returns string type for a service object of type '<JointSrv-response>"
  "prochesta_arm_motion/JointSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointSrv-response)))
  "Returns string type for a service object of type 'JointSrv-response"
  "prochesta_arm_motion/JointSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointSrv-response>)))
  "Returns md5sum for a message object of type '<JointSrv-response>"
  "d421f3b0a197945d8b29bba5c6341ea9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointSrv-response)))
  "Returns md5sum for a message object of type 'JointSrv-response"
  "d421f3b0a197945d8b29bba5c6341ea9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointSrv-response>)))
  "Returns full string definition for message of type '<JointSrv-response>"
  (cl:format cl:nil "float32 joint1~%float32 joint2~%float32 joint3~%float32 joint4~%float32 joint5~%float32 joint6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointSrv-response)))
  "Returns full string definition for message of type 'JointSrv-response"
  (cl:format cl:nil "float32 joint1~%float32 joint2~%float32 joint3~%float32 joint4~%float32 joint5~%float32 joint6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointSrv-response>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JointSrv-response
    (cl:cons ':joint1 (joint1 msg))
    (cl:cons ':joint2 (joint2 msg))
    (cl:cons ':joint3 (joint3 msg))
    (cl:cons ':joint4 (joint4 msg))
    (cl:cons ':joint5 (joint5 msg))
    (cl:cons ':joint6 (joint6 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JointSrv)))
  'JointSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JointSrv)))
  'JointSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointSrv)))
  "Returns string type for a service object of type '<JointSrv>"
  "prochesta_arm_motion/JointSrv")