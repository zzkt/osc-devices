# Open Sound Control

This is a common lisp implementation of the Open Sound Control Protocol aka OSC. The code should be close to the ansi standard, and does not rely on any external code/ffi/etc+ to do the basic encoding and decoding of packets. since OSC does not specify a transport layer, messages can be send using TCP or UDP (or carrier pigeons), however it seems UDP is more common amongst the programmes that communicate using the OSC protocol. the osc-examples.lisp file contains a few simple examples of how to send and receive OSC via UDP, and so far seems reasonably compatible with the packets send from/to max-msp, pd, supercollider and liblo. more details about OSC can be found at https://opensoundcontrol.org/

## OSC devices

This library includes a high level interface to sending and receiving osc messages to and from devices.

## installation & usage

the current version of this code is available from github

`git clone https://github.com/zzkt/osc-devices`

or via quicklisp.. .

`(ql:quickload "osc-devices")`

There are some basic examples in `osc-examples.lisp` and the `devices/examples/osc-device-examples.lisp` file shows how to use a higher-level API for sending and receiving OSC messages.

## OSC device-less

see → https://github.com/zzkt/osc
