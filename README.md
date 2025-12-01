# Keysight 87222C Transfer Switch Controller  
**Arduino-Based Controller, PCB Interface, MATLAB & Python Support**

## 🎯 Overview
This repository provides an Arduino UNO–based controller for the **Keysight 87222C Transfer Switch**, along with a custom PCB interface designed to safely and reliably connect the Arduino to the RF switch.  
The project includes Arduino firmware, PCB design files, the switch datasheet, and MATLAB/Python scripts for automated control.

## 📌 Features
- Full control of the Keysight 87222C transfer switch  
- Custom PCB interface for robust Arduino–Switch operation  
- MATLAB and Python APIs for automation  
- Simple serial command protocol  
- Example scripts for quick system integration  
- Datasheet included for hardware reference

## 📁 Repository Structure
/Arduino → Arduino UNO firmware <br>
/Python → Python control scripts <br>
/MATLAB → MATLAB control functions <br>
/PCB → Interface PCB design (schematics, layout, BOM, Gerbers) <br>
/Docs → Switch datasheet <br>


## Hardware Requirements
- Arduino UNO
- Keysight 87222C Transfer Switch  
- Custom Arduino–Switch interface PCB  
- Power supply (+20 VDC to +32 VDC)

## Installation

### Arduino Firmware
1. Open the `Arduino/` folder.  
2. Load the `.ino` file in the Arduino IDE.  
3. Select **Arduino UNO** and the correct COM port.  
4. Upload the code.

### MATLAB Interface
1. Open the `MATLAB/` folder.  
2. Add the folder to the MATLAB path.  
3. Use the provided functions to send commands to the Arduino.

### Python Interface
1. Install dependencies:
   ```bash
   pip install pyserial
2. Use the scripts in the Python/ folder to control the switch.

### Usage
#### Serial Commands

The Arduino listens for simple ASCII commands:

* A → Set switch to Position A
* B → Set switch to Position B

### ✅ Example (Python)
```
from switch87222C import Switch87222C

sw = Switch87222C("COM5")
sw.set_A()
```

### ✅  Example (MATLAB)
```
sw = Switch87222C("COM5");
sw.setB();
```

### PCB Information

The PCB/ folder includes:
* Schematic (PDF)
* Gerber manufacturing files

The PCB ensures proper level shifting, coil driving capability, and electrical compliance with the switch datasheet.

### Datasheet
The Docs/ folder includes the Keysight 87222C datasheet

### License
This project is released under the MIT License.

## 📬 Contact
For questions, collaboration, or onboarding, please contact the lab technician sotocd@cicese.mx
