;; Auto-generated. Do not edit!


(when (boundp 'lslidar_ch_msgs::LslidarChScan)
  (if (not (find-package "LSLIDAR_CH_MSGS"))
    (make-package "LSLIDAR_CH_MSGS"))
  (shadow 'LslidarChScan (find-package "LSLIDAR_CH_MSGS")))
(unless (find-package "LSLIDAR_CH_MSGS::LSLIDARCHSCAN")
  (make-package "LSLIDAR_CH_MSGS::LSLIDARCHSCAN"))

(in-package "ROS")
;;//! \htmlinclude LslidarChScan.msg.html


(defclass lslidar_ch_msgs::LslidarChScan
  :super ros::object
  :slots (_altitude _points ))

(defmethod lslidar_ch_msgs::LslidarChScan
  (:init
   (&key
    ((:altitude __altitude) 0.0)
    ((:points __points) (let (r) (dotimes (i 0) (push (instance lslidar_ch_msgs::LslidarChPoint :init) r)) r))
    )
   (send-super :init)
   (setq _altitude (float __altitude))
   (setq _points __points)
   self)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; float32 _altitude
    4
    ;; lslidar_ch_msgs/LslidarChPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; lslidar_ch_msgs/LslidarChPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; lslidar_ch_msgs/LslidarChPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance lslidar_ch_msgs::LslidarChPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lslidar_ch_msgs::LslidarChScan :md5sum-) "673b5f47684afb86ac048e756a091cbb")
(setf (get lslidar_ch_msgs::LslidarChScan :datatype-) "lslidar_ch_msgs/LslidarChScan")
(setf (get lslidar_ch_msgs::LslidarChScan :definition-)
      "# Altitude of all the points within this scan
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



(provide :lslidar_ch_msgs/LslidarChScan "673b5f47684afb86ac048e756a091cbb")


