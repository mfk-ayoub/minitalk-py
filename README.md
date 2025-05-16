# mimitalk-py

This project implements a signal-based communication system between a server and a client. The server receives and prints characters transmitted via `SIGUSR1` and `SIGUSR2` signals, and the client sends a message to the server by encoding characters using these signals.

## Features
- Server listens for `SIGUSR1` and `SIGUSR2` signals to decode binary-encoded characters.
- Client encodes and sends characters to the server using signals.
- The system supports graceful shutdown using `SIGINT`.
- Utilizes terminal color formatting for enhanced UI in both server and client programs.

## Installation

### Requirements

- Python 3.x
- The following standard Python libraries are used:
  - `os`
  - `signal`
  - `sys`
  - `time`

### Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/mfk-ayoub/minitalk-py
   ```
2. Navigate to the project directory:
	```bash
	cd path/to/minitalk_42
	```
3. Ensure that you have Python 3.x installed on your system.

### Usage
- `server`

1. Run the server script:
	```bash
	python3 server.py
	```
The server will print its PID and wait for incoming signals from the client.

2. To gracefully shut down the server, send a SIGINT signal (press Ctrl + C).

- `client`

1. Run the client script:
	```bash
	python3 client.py
	```
2.  The client will prompt you to enter the server's PID (obtained from the server's output) and the message to send.

3. Once entered, the client will transmit the message character by character using the signals `SIGUSR1` and `SIGUSR2`.

### Example

## Start the server:
- `python3 server.py`
- Server PID: 12345

## Start the client:
- `python3 client.py`
- Enter PID of the server:
- Enter the PID of the running server, followed by the message you want to send. The server will display the received message in real-time.

## CONTRIBUTING

If you find any issues or have suggestions for improvements, feel free to fork the repository and open an issue or submit a pull request.
