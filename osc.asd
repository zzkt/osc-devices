;; -*- mode: lisp -*-

(defpackage osc-system
  (:use :common-lisp :asdf))

(in-package :osc-system)

(defsystem "osc"
  :name "osc"
  :author "nik gaffney <nik@fo.am>"
  :licence "GPL v3"
  :description "The Open Sound Control protocol aka OSC"
  :version "0.7"
  :depends-on (:usocket)
  :components
  ((:file "osc" :depends-on ("osc-data" "osc-time"))
   (:file "osc-package")
   (:file "osc-data" :depends-on ("osc-package"))
   (:file "osc-time" :depends-on ("osc-package"))
   (:file "osc-dispatch" :depends-on ("osc"))
   (:file "osc-tests" :depends-on ("osc"))
   (:module "devices"
    :depends-on ("osc-package" "osc-data")
    :components
            ((:file "socket-functions")
             (:file "device")
             (:file "transmitter"
              :depends-on ("device"
                           "socket-functions"))
             (:file "listening-device"
              :depends-on ("transmitter"))
             (:file "dispatching-device"
              :depends-on ("listening-device"))
             (:file "client"
              :depends-on ("dispatching-device"))
             (:file "server" :depends-on ("client"))))))
