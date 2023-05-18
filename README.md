# iru-BME-homework

## Summary

Bash script for listing function names and parameter types from binary file which was compiled from c++ sourcefile using g++.

## Usage

The main script is: function_lister.sh, located in the root directory. After giving permission to the file, run it with: ./function_lister [input_binary] . Expects one argument, which is the path to the binary.

## Testing

For testing purposes there are 7 testible program sourcecodes in the tests/ folder. Giving permission and then running the test_runner.sh script will compile them with g++ and then run the main script with all of them.

### Test-cases:

- 1: Simple one parameter function
- 2: Two parameter function
- 3: function without parameters: should display 'void' as parameter type
- 4: First 3 test cases combined
- 5: Undefined function: should not print anything
- 6: In this case more object files were linked together
- 7: Constructor and destructor
