; Auto-generated. Do not edit!


(cl:in-package lslidar_ch_msgs-msg)


;//! \htmlinclude LslidarChSweep.msg.html

(cl:defclass <LslidarChSweep> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (scans
    :reader scans
    :initarg :scans
    :type (cl:vector lslidar_ch_msgs-msg:LslidarChScan)
   :initform (cl:make-array 128 :element-type 'lslidar_ch_msgs-msg:LslidarChScan :initial-element (cl:make-instance 'lslidar_ch_msgs-msg:LslidarChScan))))
)

(cl:defclass LslidarChSweep (<LslidarChSweep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LslidarChSweep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LslidarChSweep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_ch_msgs-msg:<LslidarChSweep> is deprecated: use lslidar_ch_msgs-msg:LslidarChSweep instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LslidarChSweep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:header-val is deprecated.  Use lslidar_ch_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'scans-val :lambda-list '(m))
(cl:defmethod scans-val ((m <LslidarChSweep>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:scans-val is deprecated.  Use lslidar_ch_msgs-msg:scans instead.")
  (scans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LslidarChSweep>) ostream)
  "Serializes a message object of type '<LslidarChSweep>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'scans))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LslidarChSweep>) istream)
  "Deserializes a message object of type '<LslidarChSweep>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'scans) (cl:make-array 128))
  (cl:let ((vals (cl:slot-value msg 'scans)))
    (cl:dotimes (i 128)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lslidar_ch_msgs-msg:LslidarChScan))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LslidarChSweep>)))
  "Returns string type for a message object of type '<LslidarChSweep>"
  "lslidar_ch_msgs/LslidarChSweep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LslidarChSweep)))
  "Returns string type for a message object of type 'LslidarChSweep"
  "lslidar_ch_msgs/LslidarChSweep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LslidarChSweep>)))
  "Returns md5sum for a message object of type '<LslidarChSweep>"
  "578c9c0e0a23b5df86072aa0fe0381c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LslidarChSweep)))
  "Returns md5sum for a message object of type 'LslidarChSweep"
  "578c9c0e0a23b5df86072aa0fe0381c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LslidarChSweep>)))
  "Returns full string definition for message of type '<LslidarChSweep>"
  (cl:format cl:nil "Header header~%~%# The 0th scan is at the bottom~%LslidarChScan[128] scans~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lslidar_ch_msgs/LslidarChScan~%# Altitude of all the points within this scan~%float32 altitude~%~%# The valid points in this scan sorted by azimuth~%# from 0 to 359.99~%LslidarChPoint[] points~%~%================================================================================~%MSG: lslidar_ch_msgs/LslidarChPoint~%# Time when the point is captured~%float32 time~%~%# Converted distance in the sensor frame~%float32 x~%float32 y~%float32 z~%~%# Raw measurement from Leishen Ch~%float32 vertical_angle~%float32 azimuth~%float32 distance~%float32 intensity~%uint32  line~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LslidarChSweep)))
  "Returns full string definition for message of type 'LslidarChSweep"
  (cl:format cl:nil "Header header~%~%# The 0th scan is at the bottom~%LslidarChScan[128] scans~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lslidar_ch_msgs/LslidarChScan~%# Altitude of all the points within this scan~%float32 altitude~%~%# The valid points in this scan sorted by azimuth~%# from 0 to 359.99~%LslidarChPoint[] points~%~%================================================================================~%MSG: lslidar_ch_msgs/LslidarChPoint~%# Time when the point is captured~%float32 time~%~%# Converted distance in the sensor frame~%float32 x~%float32 y~%float32 z~%~%# Raw measurement from Leishen Ch~%float32 vertical_angle~%float32 azimuth~%float32 distance~%float32 intensity~%uint32  line~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LslidarChSweep>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'scans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LslidarChSweep>))
  "Converts a ROS message object to a list"
  (cl:list 'LslidarChSweep
    (cl:cons ':header (header msg))
    (cl:cons ':scans (scans msg))
))
