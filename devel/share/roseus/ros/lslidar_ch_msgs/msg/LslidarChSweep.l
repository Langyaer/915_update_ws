;; Auto-generated. Do not edit!


(when (boundp 'lslidar_ch_msgs::LslidarChSweep)
  (if (not (find-package "LSLIDAR_CH_MSGS"))
    (make-package "LSLIDAR_CH_MSGS"))
  (shadow 'LslidarChSweep (find-package "LSLIDAR_CH_MSGS")))
(unless (find-package "LSLIDAR_CH_MSGS::LSLIDARCHSWEEP")
  (make-package "LSLIDAR_CH_MSGS::LSLIDARCHSWEEP"))

(in-package "ROS")
;;//! \htmlinclude LslidarChSweep.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lslidar_ch_msgs::LslidarChSweep
  :super ros::object
  :slots (_header _scans ))

(defmethod lslidar_ch_msgs::LslidarChSweep
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:scans __scans) (let (r) (dotimes (i 128) (push (instance lslidar_ch_msgs::LslidarChScan :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _scans __scans)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:scans
   (&rest __scans)
   (if (keywordp (car __scans))
       (send* _scans __scans)
     (progn
       (if __scans (setq _scans (car __scans)))
       _scans)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; lslidar_ch_msgs/LslidarChScan[128] _scans
    (apply #'+ (send-all _scans :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; lslidar_ch_msgs/LslidarChScan[128] _scans
     (dolist (elem _scans)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; lslidar_ch_msgs/LslidarChScan[128] _scans
   (dotimes (i 128)
     (send (elt _scans i) :deserialize buf ptr-) (incf ptr- (send (elt _scans i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get lslidar_ch_msgs::LslidarChSweep :md5sum-) "578c9c0e0a23b5df86072aa0fe0381c1")
(setf (get lslidar_ch_msgs::LslidarChSweep :datatype-) "lslidar_ch_msgs/LslidarChSweep")
(setf (get lslidar_ch_msgs::LslidarChSweep :definition-)
      "Header header

# The 0th scan is at the bottom
LslidarChScan[128] scans

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: lslidar_ch_msgs/LslidarChScan
# Altitude of all the points within this scan
float32 altitude

# The valid points in this scan sorted by azimuth
# from 0 to 359.99
LslidarChPoint[] points

================================================================================
MSG: lslidar_ch_msgs/LslidarChPoint
# Time when the point is captured
float32 time

# Converted distance in the sensor frame
float32 x
float32 y
float32 z

# Raw measurement from Leishen Ch
float32 vertical_angle
float32 azimuth
float32 distance
float32 intensity
uint32  line

")



(provide :lslidar_ch_msgs/LslidarChSweep "578c9c0e0a23b5df86072aa0fe0381c1")


