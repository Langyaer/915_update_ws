
(cl:in-package :asdf)

(defsystem "lslidar_ch_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LslidarChLayer" :depends-on ("_package_LslidarChLayer"))
    (:file "_package_LslidarChLayer" :depends-on ("_package"))
    (:file "LslidarChPacket" :depends-on ("_package_LslidarChPacket"))
    (:file "_package_LslidarChPacket" :depends-on ("_package"))
    (:file "LslidarChPoint" :depends-on ("_package_LslidarChPoint"))
    (:file "_package_LslidarChPoint" :depends-on ("_package"))
    (:file "LslidarChScan" :depends-on ("_package_LslidarChScan"))
    (:file "_package_LslidarChScan" :depends-on ("_package"))
    (:file "LslidarChScanUnified" :depends-on ("_package_LslidarChScanUnified"))
    (:file "_package_LslidarChScanUnified" :depends-on ("_package"))
    (:file "LslidarChSweep" :depends-on ("_package_LslidarChSweep"))
    (:file "_package_LslidarChSweep" :depends-on ("_package"))
  ))