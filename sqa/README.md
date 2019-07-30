# Testing TotestraRG32

This is a test which makes sure that TotestraRG32.py correctly implements 
RadioGatún[32].  

## To run this test

Enter this directory then type in this command:

```bash
./do.test.sh ./prog.sh
```

## The test

The test makes sure that TotestraRG32.py generates the same RadioGatún[32]
hashes for the reference test vectors that the original 2006 test suite
had.

In addition to the test inputs in the 2006 test suite, a single UTF-8
encoded Unicode string is also in the suite, to ensure the program 
generates the correct hashes for data where the high bit is set.

