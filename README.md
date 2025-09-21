<p align="center">
  <img src="https://media.licdn.com/dms/image/v2/D5622AQHHYwtvSaHhlQ/feedshare-shrink_2048_1536/B56ZSUNWkmGsAs-/0/1737653316711?e=1761177600&v=beta&t=ZihMmHFs2fVoSICtOSlo60TeJzWefQSZwJx6YcHm_Bo" alt="QubitHub">
</p>

# QInterpreter-Composer

## Project Overview

### Introduction

Qinterpreter is an open-source plataform unifies five most popular Python-based quantum libraries (Qiskit, Cirq, PennyLane, PyQuil, Amazon Braket), developed by top industry leaders such as IBM, Amazon, Google, Rigetti Computing, and Xanadu, these libraries are unified by Qinterpreter, simplifying algorithm quantum development and testing via only one plataform.
This integration allows users to easily interact and execute code in different quantum computing frameworks. Basically, Qinterpreter acts as a simulator that translates algorithms between these frameworks and is available for free on the [Qubithub.org](https://www.qubithub.org/index.html) website. 
This allows researchers and beginners who do not have access to physical quantum computers to model and simulate their research, as well as practice and interpret their results.
As a first-of-its-kind compiler from Latin America, it boosts regional infrastructure and global interoperability.

## Table contents
1. [Project overview](https://github.com/Qubithub/QInterpreter-Composer/edit/main/README.md#project-overview)
   1. Introduction
   2. key features

2. [Pre-Requisites](https://github.com/Qubithub/QInterpreter-Composer/edit/main/README.md#pre-requisites)
    1. Requirements
    2. Dependencies
    3. How to install dependencies
    4. How to use

4. [Algorithms](https://github.com/Qubithub/QInterpreter-Composer/edit/main/README.md#algorithms)
   1. Bell states
   2. Groover 2 Qubits states
   3. Groover states 4 Qubits
   4. Shor's algorithm 15
   5. Shor's algorithm 21
   6. Shor's algorithm 35
   7. HHL
   8. GHZ GHZ state with 3 states
   9. GHZ GHZ state with 4 states
   10. GHZ GHZ state with 5 states
   11. Groover states 6 Qubits
   12. QSVR
   13. Superdense Coding
   14. Quantum Teleportation
   15. Quantum Key distribution protocol

4. [Authors](https://github.com/Qubithub/QInterpreter-Composer/edit/main/README.md#authors)

# Key features

* Unifies five major Python quantum libraries into a single framework.

* Enables straightforward quantum circuit development and execution.

* Functions as a simulator, translating algorithms across different quantum frameworks.

* Utilizes a technology-agnostic approach, allowing any Python-accessible quantum simulator as a backend.

## Pre-Requisites

### Requirements

* Python-based enverioment 3.6 or later.
* For Rigetti's ``` qvm ``` and ```quilc```

### Dependecies

* Qinterpreter: Requires essential quantum computing modules and translator classes.
* Rigetti qvm and quilc: Depends on the Forest SDK tarball (forest-sdk-2.23.0-linux-deb.tar.bz2).

### How to install dependencies

Depending on the user’s requirements, there are three installation options to successfully run the Qinterpreter on your local computer.

1. Clonw the library folder directly from the GitHub repository (QInterpreter-Composter). 
Once you’ve downloaded the Qinterpreter, you can use the library locally by calling the classes and functions from the same directory. 

2. Install the Qinterpreter using the ```!pip install git+https://github.com/Qubithub/QInterpreter-Composer.git``` command directly in the Jupyter console.
This can be done by executing the following command in the Python console at the operating system’s shell prompt.
After the installation process is over, the next step involves importing the requisite libraries. To accomplish this, the users should utilize the following command code.

```
import math
from quantumgateway.quantum_circuit import QuantumCircuit, QuantumGate
from quantumgateway.quantum_translator.braket_translator import
BraketTranslator
from quantumgateway.quantum_translator.cirq_translator import
CirqTranslator
from quantumgateway.quantum_translator.qiskit_translator import
QiskitTranslator
from quantumgateway.quantum_translator.pennylane_translator import
PennyLaneTranslator
from quantumgateway.quantum_translator.pyquil_translator import
PyQuilTranslator
from quantumgateway.main import translate_to_framework,
simulate_circuit
```

3. Using our website platform [Qubithub.org](https://qubithub.org/), which offers a user-friendly environment for executing Qinterpreter online by visiting the Login page. 
Users are introduced to a pre-configured application environment with the necessary libraries already installed, removing the need for manual installation. The user credentials can be obtained by contacting the team. After logging in, the next step involves importing the libraries, as was previously mentioned. This streamlined process allows users to focus more on running their quantum circuits and less on the setup.

### Qinterpreter functions

Function ```quantumCircuit()```

text

Function ```circuit.add_gate()```

text

Function ```translate_to_framework()```

text

Function ```translate_circuit.print_circuit()```

text

Function ```simulate_circuit()```

text

## Applications

### Bell States

text

### Grover Algorithm 

Grover 2 Qubits states

Grover states 4 Qubits

Groover states 6 Qubits

### Shor's algorithm

Shor's algorithm 15

Shor's algorithm 21

 Shor's algorithm 35

### HHL

text

### GHZ state

GHZ state with 3 states

GHZ state with 4 states

GHZ state with 5 states

### QSVR

text

### Superdense Coding

text

### Quantum Teleportation

text

### Quantum Key distribution protocol

text

## Authors

| Name | email | LinkedIn |
| :--- | :--- | :--- |
| Wilmer Contreras Sepúlveda | wilmercs@ufps.edu.com |  |
| Brandon Alcántara Almazo | brandon.alcantara@uaem.edu.mx |  |
| Braulio Misael Villegas Martínez | bvillegasmartinez@luc.edu  |  |
| Luis Arturo Tapia Alarcón | luis.tapiaa@uaem.edu.mx |  |
| Sandra Gesing | sandra@us-rse.org |  |
| Juan Carlos Sanchéz Pérez | carlox.fcfm@gmail.com |  |
