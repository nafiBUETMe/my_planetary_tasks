
(cl:in-package :asdf)

(defsystem "prochesta_arm_motion-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JointSrv" :depends-on ("_package_JointSrv"))
    (:file "_package_JointSrv" :depends-on ("_package"))
  ))