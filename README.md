<p align="center">
  <img src="https://media.licdn.com/dms/image/v2/D5622AQHHYwtvSaHhlQ/feedshare-shrink_2048_1536/B56ZSUNWkmGsAs-/0/1737653316711?e=1761177600&v=beta&t=ZihMmHFs2fVoSICtOSlo60TeJzWefQSZwJx6YcHm_Bo" alt="QubitHub">
</p>

# QInterpreter-Composer

## Project Overview

### Introduction

QInterpreter is a quantum interpreter and library that brings together five major frameworks—Qiskit, Cirq, PennyLane, PyQuil, and Amazon Braket—into a unified platform. It allows circuits to be written once and executed across different backends, streamlining algorithm development and testing while reducing the learning curve for students and researchers.

## Table contents
1. [Project overview](https://github.com/Qubithub/QInterpreter-Composer/edit/main/README.md#project-overview)
   1. Introduction
   2. key features

2. [Pre-Requisites](https://github.com/Qubithub/QInterpreter-Composer/edit/main/README.md#pre-requisites)
    1. Requirements
    2. Dependencies
    3. How to install dependencies

3. [Qinterpreter functions](https://github.com/Qubithub/QInterpreter-Composer/edit/main/README.md#qinterpreter-functions)
   
   1. Function ```quantumCircuit()```
   2. Function ```circuit.add_gate()```
   3. Function ```translate_to_framework()```
   4. Function ```translate_circuit.print_circuit()```
   5. Function ```simulate_circuit()```

[Authors](https://github.com/Qubithub/QInterpreter-Composer/edit/main/README.md#authors)

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

<img src="https://github.com/Qubithub/QInterpreter-Composer/blob/main/Images/login_Qinterpreter.jpg" alt="login_Qinterpreter" width="50%" height="50%">

## Qinterpreter functions

This section describes in detail the functions used in the Qinterpreter library.
The main objective is to provide users with a comprehensive guide and extensive knowledge for the correct use of Qinterpreter's features and capabilities.

Function ```quantumCircuit()```

Quantum circuits are crucial elements in quantum computing, as they serve as containers for a collection of qubits. Treating these qubits as unified entities allows the user to manipulate and modify their states using quantum gates. 
The QuantumCircuit function in Qinterpreter allows you to generate a circuit taking into account the number of qubits and classical registers to be incorporated. 
In this specific scenario, the following function is used to create a circuit:
```circuit = QuantumCircuit(nq,nc)```
Here, ```nq``` represents the number of qubit registers used, and ```nc``` denotes the number of classical registers that will be defined within the quantum circuit. The defined classical registers are then used to perform measurements.

Function ```circuit.add_gate()```

Quantum computing algorithms are commonly depicted using quantum circuit models. These models incorporate quantum gates, projective measurements, and an n-qubit register known as qubits.
A vector in the complex space C2describes the state of a qubit. Within this space, quantum gates are represented by unitary complex matrices, reflecting the unitary time evolution of closed quantum systems.
In Qinterpreter, a complete set of standard gates widely used in this field has been implemented using the circuit.add_gate() function.
The definitions of these gates are presented in Table 1 below. In this case, we present the gates currently implemented in Qinterpreter. Table 2 illustrates the procedure for incorporating these gates into any circuit object.

| Gate/Matrix form | Description |
| :---: | :--- |
|H| ```circuit.add_gate(QuantumGate ("h", [0]))```|
|CNOT| ```circuit.add_gate(QuantumGate ("cnot", [0, 1]))``` //Contro: q0, Objective: q1|
|X| ```circuit.add_gate(QuantumGate("x", [0]))```|
|Y| ```circuit.add_gate(QuantumGate("y", [0]))```|
|Z| ```circuit.add_gate(QuantumGate ("z", [0]))```|
|RY| ```circuit.add_gate(QuantumGate("ry", [0], [Angle]))``` //Rotate Y axis by any angle|
|RX| ```circuit.add_gate(QuantumGate("rx", [0], [math.pi/2]))``` //Rotate X axis by any angle|
|RZ| ```circuit.add_gate(QuantumGate("rz", [0], [math.pi/2]))``` //Rotate Z axis by any angle|
|CCNOT| ```circuit.add_gate(QuantumGate("toffoli", [0,1,2]))``` //Control: q0 and q1, Objective: q2|
|SWAP| ```circuit.add_gate(QuantumGate("x", [0, 1]))``` //Swap between q0 and q1|
|CP| ```circuit.add_gate(QuantumGate("CPhase", [0, 1], [Angle]))``` // Applied an angle|
|CZ| ```circuit.add_gate(QuantumGate("Cz", [0, 1], [Angle]))``` //Contro: q0, Objective: q1|
|CY| ```circuit.add_gate(QuantumGate("Cy", [0, 1], [Angle]))``` //Contro: q0, Objective: q1|
|Measure| ```circuit.add_gate(QuantumGate("MEASURE", [i, j]))``` //Where i is the qubit register index and j is the classical register index.|

Note: The Toffoli gate is a standard quantum computing gate that modifies the state of a target qubit based on two control qubit states. In addition, Toffoli gates can be achieved through a sequence of elementary quantum gates.

Function ```translate_to_framework()```

The goal of the Qinterpreter library is to be able to translate instructions to various quantum computing frameworks. 
The Qinterpreter library perfectly fulfills this goal by being compatible with five libraries: Qiskit, Pyquil, Cirq, Pennylane, and Amazon-Braket.
These libraries were selected based on their GitHub metrics, which can be interpreted as a measure of popularity for quantum computing development.

To choose between the different desired development frameworks and run your circuit, the following code is used:

```
selected_framework = ′qiskit ′
translated_circuit = translate_to_framework(circuit,
selected_framework)
```

The “selected_framework” variable is where you choose the desired framework: qiskit, cirq, pennylane, pyquil, amazonbraket.

Function ```translate_circuit.print_circuit()```

Another feature of Qinterpreter is that it allows you to print the modeled circuit regardless of the selected quantum computing framework using the print_circuit function, allowing users to visualize and debug the quantum circuit they have created.
In summary, once the framework has been selected, the previously defined quantum circuit can be printed using the following function:

```
translated_circuit.print_circuit()
```

Function ```simulate_circuit()```



Qinterpreter uses the appropriate simulators provided by each library to simulate a specific quantum circuit. For example, in the case of Qiskit, we use the QASM simulator. However, when using the Pyquil framework, the user must install the necessary software requirements. 

The command to perform and print the simulations is as follows:

```print(simulate_circuit(circuit, selected_framework))```

In order to perform the simulation, it is important to note that the Measure function must be called before executing ```simulate_circuit()```
To apply the measurement function, the user must execute the following code:

```circuit.add_gate(QuantumGate(“MEASURE”, [i,j]))```

In the above function, [i, j] represents the indices of the quantum register and the classical register where the quantum measurement function will be applied.


## Authors

| Name | email | LinkedIn |
| :--- | :--- | :--- |
| Wilmer Contreras Sepúlveda | wilmercs@ufps.edu.com |  |
| Brandon Alcántara Almazo | brandon.alcantara@uaem.edu.mx |  |
| Braulio Misael Villegas Martínez | bvillegasmartinez@luc.edu  |  |
| Luis Arturo Tapia Alarcón | luis.tapiaa@uaem.edu.mx |  |
| Sandra Gesing | sandra@us-rse.org |  |
| Juan Carlos Sanchéz Pérez | carlox.fcfm@gmail.com |  |
