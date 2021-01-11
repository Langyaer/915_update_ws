; Auto-generated. Do not edit!


(cl:in-package lslidar_ch_msgs-msg)


;//! \htmlinclude LslidarChLayer.msg.html

(cl:defclass <LslidarChLayer> (roslisp-msg-protocol:ros-message)
  ((scan_channel
    :reader scan_channel
    :initarg :scan_channel
    :type (cl:vector sensor_msgs-msg:LaserScan)
   :initform (cl:make-array 128 :element-type 'sensor_msgs-msg:LaserScan :initial-element (cl:make-instance 'sensor_msgs-msg:LaserScan))))
)

(cl:defclass LslidarChLayer (<LslidarChLayer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LslidarChLayer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LslidarChLayer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_ch_msgs-msg:<LslidarChLayer> is deprecated: use lslidar_ch_msgs-msg:LslidarChLayer instead.")))

(cl:ensure-generic-function 'scan_channel-val :lambda-list '(m))
(cl:defmethod scan_channel-val ((m <LslidarChLayer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch_msgs-msg:scan_channel-val is deprecated.  Use lslidar_ch_msgs-msg:scan_channel instead.")
  (scan_channel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LslidarChLayer>) ostream)
  "Serializes a message object of type '<LslidarChLayer>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'scan_channel))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LslidarChLayer>) istream)
  "Deserializes a message object of type '<LslidarChLayer>"
  (cl:setf (cl:slot-value msg 'scan_channel) (cl:make-array 128))
  (cl:let ((vals (cl:slot-value msg 'scan_channel)))
    (cl:dotimes (i 128)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:LaserScan))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LslidarChLayer>)))
  "Returns string type for a message object of type '<LslidarChLayer>"
  "lslidar_ch_msgs/LslidarChLayer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LslidarChLayer)))
  "Returns string type for a message object of type 'LslidarChLayer"
  "lslidar_ch_msgs/LslidarChLayer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LslidarChLayer>)))
  "Returns md5sum for a message object of type '<LslidarChLayer>"
  "68a91988942756cb30282e7a5cad7fbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LslidarChLayer)))
  "Returns md5sum for a message object of type 'LslidarChLayer"
  "68a91988942756cb30282e7a5cad7fbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LslidarChLayer>)))
  "Returns full string definition for message of type '<LslidarChLayer>"
  (cl:format cl:nil "# Header header~%# The 0th scan is at the bottom~%sensor_msgs/LaserScan[128] scan_channel~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LslidarChLayer)))
  "Returns full string definition for message of type 'LslidarChLayer"
  (cl:format cl:nil "# Header header~%# The 0th scan is at the bottom~%sensor_msgs/LaserScan[128] scan_channel~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LslidarChLayer>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'scan_channel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LslidarChLayer>))
  "Converts a ROS message object to a list"
  (cl:list 'LslidarChLayer
    (cl:cons ':scan_channel (scan_channel msg))
))
