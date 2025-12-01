# Keysight 87222C Transfer Switch Controller (MATLAB)

This repository contains a small MATLAB utility for controlling a Keysight 87222C Transfer Switch using an Arduino connected via serial communication.

The MATLAB functions allow you to:

* Open a persistent serial connection
* Send switching commands ('A' or 'B')
* Close the connection when finished

This avoids repeatedly connecting/disconnecting the serial port for every command.

## Hardware Overview

* Switch: Keysight 87222C Transfer Switch
* Controller: Arduino (any board with USB serial works)
* Interface: Serial communication at 115200 baud
* Protocol: Single-character commands
  * 'A' → Switch to position A
  * 'B' → Switch to position B

Ensure that the Arduino has the required firmware uploaded before using the MATLAB interface.

## MATLAB Functions Provided
1. switch87222C_open(port): Opens and returns a persistent serial connection handler.
2. switch87222C_send(s, command): Sends 'A' or 'B' through an existing serial connection.
3. switch87222C_close(s): Closes and deletes the serial connection.

### Example Usage
```
% Open connection once
s = switch87222C_open('COM4');

% Switch to position A
switch87222C_send(s, 'A');

% Switch to position B
switch87222C_send(s, 'B');

% Close connection when finished
switch87222C_close(s);
```

## Installation

Clone or download the repository.
Add the folder to the MATLAB path:
Connect your Arduino (ensure it enumerates as COMx on Windows).
Upload the Arduino sketch that listens for 'A' and 'B' commands.

## Notes

The functions use MATLAB's modern serialport API.
Ensure you have MATLAB R2019b or newer.

If MATLAB cannot detect the serial port, verify that the Arduino IDE or another program is not holding the port open.
