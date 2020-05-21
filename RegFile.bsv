//RegFile Storage Structures/Modules
//used to take in stored values to Testbench (one example)


import RegFile :: * ;  //to import the RegFile package into the code


RegFile#(ctr, Int#(32)) values <- mkRegFileLoad("values.hex", 0, 1000);
//    ctr - line iterator/pointer
//    Int#(32) - type of each line value
//    values -  instance of RegFile module
//    "values.hex" - file containing the values *it should be a hex file*
//    0 - points to the first line
//    1000 - points to the 999th line

Int#(32) a = values.sub(ctr);   //reading value of (ctr)th line from the file and return it to a.
