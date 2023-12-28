(defpackage :osc
  (:use :cl)
  (:documentation "OSC, the 'Open Sound Control' protocol.")
  (:export
   #:make-message
   #:message
   #:make-bundle
   #:bundle
   #:format-osc-data
   #:command
   #:args
   #:timetag
   #:elements
   #:encode-message
   #:encode-bundle
   #:decode-message
   #:decode-bundle
   #:make-osc-tree
   #:dp-register
   #:dp-remove
   #:dp-match
   #:dispatch
;; osc-time
   #:get-current-timetag
   #:timetag+
   #:get-unix-time
   #:unix-time->timetag
   #:timetag->unix-time
   #:print-as-double
;; osc-devices
   #:osc-transmitter
   #:osc-transmitter-udp
   #:osc-client
   #:osc-client-udp
   #:osc-client-tcp
   #:osc-server
   #:osc-server-udp
   #:osc-server-tcp
   #:protocol
   #:name
   #:buffer-size
   #:quit
   #:osc-device-cleanup
;; listening
   #:make-listening-thread
;; dispatching
   #:add-osc-responder
   #:remove-osc-responder
;; transmitters
   #:make-osc-transmitter
   #:connect
   #:send
   #:send-msg
   #:send-bundle
   #:send-to
   #:send-msg-to
   #:send-bundle-to
   #:send-all
   #:send-msg-all
   #:send-bundle-all
;; clients
   #:make-osc-client
   #:make-client-responders
   #:register
;; servers
   #:make-osc-server
   #:boot
   #:make-server-responders
   #:register-udp-client
   #:unregister-udp-client
   #:register-tcp-client
   #:unregister-tcp-client
   #:post-register-hook
   #:get-tcp-client
   #:print-clients
   #:send-to-client
   #:send-bundle-to-client
;; sockets
   #:*default-osc-buffer-size*
   #:make-name-string
   #:device-active-p
   #:device-socket-name
   #:address
   #:port
   #:peer-address
   #:peer-port
   #:run-tests))
