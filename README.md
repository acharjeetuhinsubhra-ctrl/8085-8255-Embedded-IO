# 8085 Microprocessor-Based Embedded I/O Interface using 8255 PPI

This project demonstrates I/O interfacing between the 8085 microprocessor and external devices using the 8255 Programmable Peripheral Interface (PPI).

The system is programmed in 8085 Assembly Language and includes interfacing with LEDs, switches, and a 7-segment display.

## Hardware

- 8085 Microprocessor
- 8255 PPI
- LEDs
- Switches
- 7-Segment Display

## Software

- 8085 Assembly Language

## I/O Configuration

| Port | Function |
|------|----------|
| Port A | LED Output |
| Port B | Switch Input |
| Port C | 7-Segment Display |

The 8255 is configured in Mode 0.

## Project Files

- `main.asm` – Main program integrating the I/O operations
- `led_control.asm` – LED control program
- `switch_input.asm` – Switch input program
- `seven_segment.asm` – 7-segment display program
- `delay.asm` – Software delay routine

## Documentation

### Circuit Diagram

<img width="1536" height="1024" alt="circuit_diagram" src="https://github.com/user-attachments/assets/6d4e8f24-c05e-4c76-8dde-364cd8c8257c" />

### Block Diagram

<img width="1536" height="1024" alt="block_diagram" src="https://github.com/user-attachments/assets/a988662c-028d-4bb8-9440-4d04712f3320" />



### Flowchart

<img width="1024" height="1536" alt="flowchart" src="https://github.com/user-attachments/assets/9a5dd91e-8931-487c-b68b-3ffde891629b" />


## Key Concepts

- 8085 Assembly Language
- 8255 PPI
- Digital I/O interfacing
- Hardware-software interfacing
- Peripheral communication

## Author

**Tuhin Subhra Acharjee**  
B.Tech Electrical Engineering  
National Institute of Technology Durgapur
