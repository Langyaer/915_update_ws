; Auto-generated. Do not edit!


(cl:in-package lslidar_ch_msgs-msg)


;//! \htmlinclude LslidarChScanUnified.msg.html

(cl:defclass <LslidarChScanUnified> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (basetime
    :reader basetime
    :initarg :basetime
    :type cl:integer
    :initform 0)
   (packets
    :reader packets
    :initarg :packets
    :type (cl:vector lslidar_ch_msgs-msg:LslidarChPacket)
   :initform (cl:make-array 0 :element-type 'lslidar_ch_msgs-msg:LslidarChPacket :initial-element (cl:make-instance 'lslidar_ch_msgs-msg:LslidarChPacket))))
)

(cl:defclass LslidarChScanUnified (<LslidarChScanUnified>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LslidarChScanUnified>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LslidarChScanUnified)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_ch_msgs-msg:<LslidarChScanUnified> is deprecated: use lslidar_ch_msgs-msg:LslidarChScanUnified instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LslidarChScanUnified>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:header-val is deprecated.  Use lslidar_ch_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'basetime-val :lambda-list '(m))
(cl:defmethod basetime-val ((m <LslidarChScanUnified>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:basetime-val is deprecated.  Use lslidar_ch_msgs-msg:basetime instead.")
  (basetime m))

(cl:ensure-generic-function 'packets-val :lambda-list '(m))
(cl:defmethod packets-val ((m <LslidarChScanUnified>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:packets-val is deprecated.  Use lslidar_ch_msgs-msg:packets instead.")
  (packets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LslidarChScanUnified>) ostream)
  "Serializes a message object of type '<LslidarChScanUnified>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'basetime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'basetime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'basetime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'basetime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'basetime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'basetime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'basetime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'basetime)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'packets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'packets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LslidarChScanUnified>) istream)
  "Deserializes a message object of type '<LslidarChScanUnified>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'basetime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'basetime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'basetime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'basetime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'basetime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'basetime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'basetime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'basetime)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'packets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'packets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lslidar_ch_msgs-msg:LslidarChPacket))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LslidarChScanUnified>)))
  "Returns string type for a message object of type '<LslidarChScanUnified>"
  "lslidar_ch_msgs/LslidarChScanUnified")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LslidarChScanUnified)))
  "Returns string type for a message object of type 'LslidarChScanUnified"
  "lslidar_ch_msgs/LslidarChScanUnified")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LslidarChScanUnified>)))
  "Returns md5sum for a message object of type '<LslidarChScanUnified>"
  "ef8aa3eef1ea793580e2ef69ec4ca588")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LslidarChScanUnified)))
  "Returns md5sum for a message object of type 'LslidarChScanUnified"
  "ef8aa3eef1ea793580e2ef69ec4ca588")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LslidarChScanUnified>)))
  "Returns full string definition for message of type '<LslidarChScanUnified>"
  (cl:format cl:nil "#lslidar Ch scan packets~%~%Header           header         #standard ros message header~%uint64           basetime       #time to the top of hour~%LslidarChPacket[] packets        #vector of raw packets~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lslidar_ch_msgs/LslidarChPacket~%# Raw Leishen LIDAR packet.~%~%Header header           #standard ros message header~%time stamp              # packet timestamp~%uint8[1206] data        # packet contents~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LslidarChScanUnified)))
  "Returns full string definition for message of type 'LslidarChScanUnified"
  (cl:format cl:nil "#lslidar Ch scan packets~%~%Header           header         #standard ros message header~%uint64           basetime       #time to the top of hour~%LslidarChPacket[] packets        #vector of raw packets~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lslidar_ch_msgs/LslidarChPacket~%# Raw Leishen LIDAR packet.~%~%Header header           #standard ros message header~%time stamp              # packet timestamp~%uint8[1206] data        # packet contents~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LslidarChScanUnified>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'packets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LslidarChScanUnified>))
  "Converts a ROS message object to a list"
  (cl:list 'LslidarChScanUnified
    (cl:cons ':header (header msg))
    (cl:cons ':basetime (basetime msg))
    (cl:cons ':packets (packets msg))
))
