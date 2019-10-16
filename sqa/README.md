# Testing TotestraRG32

This is a test which makes sure that TotestraRG32.py correctly implements 
RadioGatún[32], the random number generator it uses.

There is a also a test to make sure TotestraRG32.py makes correct maps.

## To run the RadioGatún[32] test

Enter this directory then type in this command:

```bash
./do.test.sh ./prog.sh
```

## The RadioGatún[32] test

The test makes sure that TotestraRG32.py generates the same RadioGatún[32]
hashes (i.e. random numbers) for the reference test vectors that the 
original 2006 test suite has.

In addition to the test inputs in the 2006 test suite, a single UTF-8
encoded Unicode string is also in the suite, to ensure the program 
generates the correct hashes for data where the high bit is set.

# The map generation test

There is also a test to make sure the TotestraRG32.py script generates
“correct” maps (i.e. the generator generates the same maps it did in 
mid-2019):

```bash
bash TotestraRG32.test.sh
```

It should return `output success`.  If not, I will reject any diff
which breaks this test.
