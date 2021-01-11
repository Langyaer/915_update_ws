; Auto-generated. Do not edit!


(cl:in-package lslidar_ch_msgs-msg)


;//! \htmlinclude LslidarChPoint.msg.html

(cl:defclass <LslidarChPoint> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (vertical_angle
    :reader vertical_angle
    :initarg :vertical_angle
    :type cl:float
    :initform 0.0)
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (intensity
    :reader intensity
    :initarg :intensity
    :type cl:float
    :initform 0.0)
   (line
    :reader line
    :initarg :line
    :type cl:integer
    :initform 0))
)

(cl:defclass LslidarChPoint (<LslidarChPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LslidarChPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LslidarChPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_ch_msgs-msg:<LslidarChPoint> is deprecated: use lslidar_ch_msgs-msg:LslidarChPoint instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <LslidarChPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:time-val is deprecated.  Use lslidar_ch_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <LslidarChPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:x-val is deprecated.  Use lslidar_ch_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <LslidarChPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:y-val is deprecated.  Use lslidar_ch_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <LslidarChPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:z-val is deprecated.  Use lslidar_ch_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'vertical_angle-val :lambda-list '(m))
(cl:defmethod vertical_angle-val ((m <LslidarChPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:vertical_angle-val is deprecated.  Use lslidar_ch_msgs-msg:vertical_angle instead.")
  (vertical_angle m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <LslidarChPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:azimuth-val is deprecated.  Use lslidar_ch_msgs-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <LslidarChPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:distance-val is deprecated.  Use lslidar_ch_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'intensity-val :lambda-list '(m))
(cl:defmethod intensity-val ((m <LslidarChPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:intensity-val is deprecated.  Use lslidar_ch_msgs-msg:intensity instead.")
  (intensity m))

(cl:ensure-generic-function 'line-val :lambda-list '(m))
(cl:defmethod line-val ((m <LslidarChPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:line-val is deprecated.  Use lslidar_ch_msgs-msg:line instead.")
  (line m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LslidarChPoint>) ostream)
  "Serializes a message object of type '<LslidarChPoint>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vertical_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'azimuth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'intensity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'line)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'line)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'line)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'line)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LslidarChPoint>) istream)
  "Deserializes a message object of type '<LslidarChPoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vertical_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimuth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'intensity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'line)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'line)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'line)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'line)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LslidarChPoint>)))
  "Returns string type for a message object of type '<LslidarChPoint>"
  "lslidar_ch_msgs/LslidarChPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LslidarChPoint)))
  "Returns string type for a message object of type 'LslidarChPoint"
  "lslidar_ch_msgs/LslidarChPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LslidarChPoint>)))
  "Returns md5sum for a message object of type '<LslidarChPoint>"
  "724d832461be579d3f6441356f76032b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LslidarChPoint)))
  "Returns md5sum for a message object of type 'LslidarChPoint"
  "724d832461be579d3f6441356f76032b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LslidarChPoint>)))
  "Returns full string definition for message of type '<LslidarChPoint>"
  (cl:format cl:nil "# Time when the point is captured~%float32 time~%~%# Converted distance in the sensor frame~%float32 x~%float32 y~%float32 z~%~%# Raw measurement from Leishen Ch~%float32 vertical_angle~%float32 azimuth~%float32 distance~%float32 intensity~%uint32  line~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LslidarChPoint)))
  "Returns full string definition for message of type 'LslidarChPoint"
  (cl:format cl:nil "# Time when the point is captured~%float32 time~%~%# Converted distance in the sensor frame~%float32 x~%float32 y~%float32 z~%~%# Raw measurement from Leishen Ch~%float32 vertical_angle~%float32 azimuth~%float32 distance~%float32 intensity~%uint32  line~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LslidarChPoint>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LslidarChPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'LslidarChPoint
    (cl:cons ':time (time msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':vertical_angle (vertical_angle msg))
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':intensity (intensity msg))
    (cl:cons ':line (line msg))
))
