# System Features

The enigma machine is a system that encrypts messages.[idk what to put here]

# System description

The Enigma Machine is a complex cipher machine that requires many components to properly encrypt text. Each input letter is passed through the system twice before being properly encrypted.

First, the input letter passes through a stecker circuit [REF TO DIAGRAM], which adds an additional scrambling step by exchanging each letter with precisely one other letter. While the Stecker circuit implemented in the original Enigma machine was a plugboard that could change which letters were connected, our machine simply hardcodes these values.

Next, the stecker output letter is passed, right to left, through a series of 3 rotors[REF TO DIAGRAM]. Each rotor has 3 initial settings: the type, the ring setting, and the initial position. Internally, the rotor has an inner core that implements a permutation (based on the rotor type). Depending on the position of the rotor, the rotor input is barrel shifted rightwards before applying that permutation. Additionally, each rotor also has a ring which also shifts the input (leftwards) before the permutation (this happens after the positional shift). After the permutation, the letter is shifted again by the ring and position shift amounts, first by the ring and then by the position (opposite to previous direction).

Finally, the output of the last rotor is passed to a reflector circuit[REF TO DIAGRAM]. This circuit has two types, which are hardcoded, and swaps letters similarly to the stecker circuit.

The output of the reflector is passed back through the rotors, using the inverse of the permutation, and the stecker circuit. This provides our system with the final encrypted letter.

# UI

In order to provide a simple User Interface (UI) to an end user, we decided to use a simple combination components.

The UI uses switches as the primary input source, alongside two push-buttons. For the Enigma machine, there are two main modes of operation: initialization and encryption. Therefore, it made sense to assign Switch 9 to control the mode of operation. While initializing the machine we have a total of 10 settings to determine: 3 settings per rotor as well as the reflector type. We decided to use Switches 7 and 8 to control which component we were setting (right, middle, left, or reflector). The setting being changed was determined by Switches 5 and 6, depending on the type of component we were changing. For the Rotors, binary values 0-2 are used for each initial setting. The reflector, on the other hand, ignores the setting type since it only has one setting. The last 5 Switches are used to indicate input values. In order to simulate a keypress, we use Pushbutton 0 as a validation button for the current input setting. Lastly, we use Pushbutton 3 as an asynchronous circuit reset.

The UI relies mostly on the hex displays to inform the user what is currently being done. No matter what operation mode we're in, we use Hex 0 and 1 to display the current input value. During initialization, Hex 2 and 3 are used to display the system's current value. During encryption, these displays instead display the encrypted value (after the keypress). Finally, since pushbutton debouncing is tricky, we use the green LED 0-4 to display the number of times the button has been pressed (modulus 26).

# Testing

In order to test our design, we first performed a functional simulation of our enigma machine. We tested every letter of the alphabet with certain input conditions and made sure that the decrypted output was correct. Once our UI was completed, we performed several tests by setting specific initial conditions, choosing a message code, and encrypting a small message.

