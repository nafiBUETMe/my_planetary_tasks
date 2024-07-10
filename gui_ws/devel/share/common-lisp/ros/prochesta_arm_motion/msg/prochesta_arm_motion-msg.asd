
(cl:in-package :asdf)

(defsystem "prochesta_arm_motion-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SixJoints" :depends-on ("_package_SixJoints"))
    (:file "_package_SixJoints" :depends-on ("_package"))
  ))