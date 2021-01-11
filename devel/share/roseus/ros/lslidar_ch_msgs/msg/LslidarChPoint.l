;; Auto-generated. Do not edit!


(when (boundp 'lslidar_ch_msgs::LslidarChPoint)
  (if (not (find-package "LSLIDAR_CH_MSGS"))
    (make-package "LSLIDAR_CH_MSGS"))
  (shadow 'LslidarChPoint (find-package "LSLIDAR_CH_MSGS")))
(unless (find-package "LSLIDAR_CH_MSGS::LSLIDARCHPOINT")
  (make-package "LSLIDAR_CH_MSGS::LSLIDARCHPOINT"))

(in-package "ROS")
;;//! \htmlinclude LslidarChPoint.msg.html


(defclass lslidar_ch_msgs::LslidarChPoint
  :super ros::object
  :slots (_time _x _y _z _vertical_angle _azimuth _distance _intensity _line ))

(defmethod lslidar_ch_msgs::LslidarChPoint
  (:init
   (&key
    ((:time __time) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:vertical_angle __vertical_angle) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:distance __distance) 0.0)
    ((:intensity __intensity) 0.0)
    ((:line __line) 0)
    )
   (send-super :init)
   (setq _time (float __time))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _vertical_angle (float __vertical_angle))
   (setq _azimuth (float __azimuth))
   (setq _distance (float __distance))
   (setq _intensity (float __intensity))
   (setq _line (round __line))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:vertical_angle
   (&optional __vertical_angle)
   (if __vertical_angle (setq _vertical_angle __vertical_angle)) _vertical_angle)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:intensity
   (&optional __intensity)
   (if __intensity (setq _intensity __intensity)) _intensity)
  (:line
   (&optional __line)
   (if __line (setq _line __line)) _line)
  (:serialization-length
   ()
   (+
    ;; float32 _time
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _vertical_angle
    4
    ;; float32 _azimuth
    4
    ;; float32 _distance
    4
    ;; float32 _intensity
    4
    ;; uint32 _line
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vertical_angle
       (sys::poke _vertical_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _intensity
       (sys::poke _intensity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _line
       (write-long _line s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vertical_angle
     (setq _vertical_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _azimuth
     (setq _azimuth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _intensity
     (setq _intensity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _line
     (setq _line (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lslidar_ch_msgs::LslidarChPoint :md5sum-) "724d832461be579d3f6441356f76032b")
(setf (get lslidar_ch_msgs::LslidarChPoint :datatype-) "lslidar_ch_msgs/LslidarChPoint")
(setf (get lslidar_ch_msgs::LslidarChPoint :definition-)
      "# Time when the point is captured
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



(provide :lslidar_ch_msgs/LslidarChPoint "724d832461be579d3f6441356f76032b")


