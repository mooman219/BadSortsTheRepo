# BadSortsTheRepo

We strive to #disrupt sorting in new and exciting ways. By demonstrating revolutionary, modern, and versatile sorting algorithms, we hope to #growthhack your projects and synergize with your big data.

## Contributing

We're always striving for greatness, so although not all code has been updated for the new contribution format, it is recommended that these simple guidelines are followed for contributing your new, state-of-the-art sorting algorithm.

### Root directory formatting

The project root contains the name of the sort in lowercase.

#### Example directory tree view
```
├── bogobogo
├── bogosort
├── sleepsort
└── tacosort
```

### Sort directory formatting

Inside of the sort's directory contains two things:
- A README.md containing the pseudocode for the sort.
- Folders labeled by language.

#### Example directory tree view
```
├── sleepsort
│   ├── java
│   ├── python
|   ├── swift
│   └── README.md
└── tacosort
    ├── java
    ├── javascript
    ├── python
    ├── swift
    └── README.md
```

### Sorting algorithm

Inside of your language's directory contains two things:
- The source file in the language denoted by the folder.
- A readme containing various details about your specific sort. This can include (if applicable):
 - Dependencies.
 - Command line formatting.
 - Example command.
 - Credits. 

#### Example README.md
```
# Dependencies

Python 3

# Running

python3 sleep-sort.py [Space separated numbers]

## Example

python3 sleep-sort.py 5 1 3 2

# Credits

Wade Mauger @wadeanthony0100
```

### Source files

Your sort implementation should be designed with the following criteria in mind:
- Your sort operates via the command line.
- Input is consumed on stdin.
- Output is produced on stdout.
