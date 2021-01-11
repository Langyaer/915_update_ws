; Auto-generated. Do not edit!


(cl:in-package lslidar_ch_msgs-msg)


;//! \htmlinclude LslidarChScan.msg.html

(cl:defclass <LslidarChScan> (roslisp-msg-protocol:ros-message)
  ((altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (points
    :reader points
    :initarg :points
    :type (cl:vector lslidar_ch_msgs-msg:LslidarChPoint)
   :initform (cl:make-array 0 :element-type 'lslidar_ch_msgs-msg:LslidarChPoint :initial-element (cl:make-instance 'lslidar_ch_msgs-msg:LslidarChPoint))))
)

(cl:defclass LslidarChScan (<LslidarChScan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LslidarChScan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LslidarChScan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_ch_msgs-msg:<LslidarChScan> is deprecated: use lslidar_ch_msgs-msg:LslidarChScan instead.")))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <LslidarChScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:altitude-val is deprecated.  Use lslidar_ch_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <LslidarChScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:points-val is deprecated.  Use lslidar_ch_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LslidarChScan>) ostream)
  "Serializes a message object of type '<LslidarChScan>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LslidarChScan>) istream)
  "Deserializes a message object of type '<LslidarChScan>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lslidar_ch_msgs-msg:LslidarChPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LslidarChScan>)))
  "Returns string type for a message object of type '<LslidarChScan>"
  "lslidar_ch_msgs/LslidarChScan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LslidarChScan)))
  "Returns string type for a message object of type 'LslidarChScan"
  "lslidar_ch_msgs/LslidarChScan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LslidarChScan>)))
  "Returns md5sum for a message object of type '<LslidarChScan>"
  "673b5f47684afb86ac048e756a091cbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LslidarChScan)))
  "Returns md5sum for a message object of type 'LslidarChScan"
  "673b5f47684afb86ac048e756a091cbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LslidarChScan>)))
  "Returns full string definition for message of type '<LslidarChScan>"
  (cl:format cl:nil "# Altitude of all the points within this scan~%float32 altitude~%~%# The valid points in this scan sorted by azimuth~%# from 0 to 359.99~%LslidarChPoint[] points~%~%================================================================================~%MSG: lslidar_ch_msgs/LslidarChPoint~%# Time when the point is captured~%float32 time~%~%# Converted distance in the sensor frame~%float32 x~%float32 y~%float32 z~%~%# Raw measurement from Leishen Ch~%float32 vertical_angle~%float32 azimuth~%float32 distance~%float32 intensity~%uint32  line~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LslidarChScan)))
  "Returns full string definition for message of type 'LslidarChScan"
  (cl:format cl:nil "# Altitude of all the points within this scan~%float32 altitude~%~%# The valid points in this scan sorted by azimuth~%# from 0 to 359.99~%LslidarChPoint[] points~%~%================================================================================~%MSG: lslidar_ch_msgs/LslidarChPoint~%# Time when the point is captured~%float32 time~%~%# Converted distance in the sensor frame~%float32 x~%float32 y~%float32 z~%~%# Raw measurement from Leishen Ch~%float32 vertical_angle~%float32 azimuth~%float32 distance~%float32 intensity~%uint32  line~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LslidarChScan>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LslidarChScan>))
  "Converts a ROS message object to a list"
  (cl:list 'LslidarChScan
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':points (points msg))
))
