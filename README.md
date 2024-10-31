# Vector Diagram Plotting Tool

This repository provides MATLAB scripts to create vector (phasor) diagrams, particularly useful for visualizing voltage and current relationships in electrical circuits with ohmic-inductive loads. It includes a main script for setting up and plotting vectors, and a custom class definition (`vector.m`) for handling vector properties and plotting. Voltage and current vectors are color-coded to improve clarity.

## Files in this Repository

- **`vectordiagrams.m`**: Configures and plots vectors representing electrical quantities.
- **`vector.m`**: Class definition for `vector`, allowing customization of vector properties such as angle, length, color, and labels.

## Installation

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/your-username/vector-diagram-plotter.git
   ```
2. Open MATLAB, and add the repository folder to your MATLAB path.

## Usage

1. Open the main script in MATLAB.
2. Run the script to generate the vector diagram, showcasing vector relationships for voltage and current in an ohmic-inductive load setup.

### Example Code

In the main script, vectors are defined with attributes like magnitude, angle, starting point, type, and name. Here is an example of how to define and plot vectors using the `plotVector` function:

```matlab
% Example usage in main script
V_2 = plotVector(219.61, 0, [0 0], 'Voltage', 'V_2');
I_2 = plotVector(13.64, -45.96, [0 0], 'Current', 'I_2');
```

The `vector` class handles vector calculations and plotting, with properties like `Angle`, `Length`, `Tail`, `Head`, `Type`, and `Name`. 

### Vector Class Details

The `vector` class includes:
- **Properties**: 
  - `Head` and `Tail`: Define the vector's start and end points.
  - `Type`: Differentiates between "Voltage" (red) and "Current" (blue) vectors.
  - `Angle` and `Length`: Specify vector orientation and magnitude.
  - `Name`: Label for easy identification on the plot.

- **Methods**:
  - `vplot`: Plots the vector using `quiver` and displays the vector's label.
  - `setHead`: Calculates the head point based on the angle, length, and tail position.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
