
(cl:in-package :asdf)

(defsystem "er1_motor_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Motors" :depends-on ("_package_Motors"))
    (:file "_package_Motors" :depends-on ("_package"))
  ))