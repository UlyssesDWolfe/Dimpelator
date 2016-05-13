/+
FileName: main.d 

Description: 
    This file calls the main app for the impedance calculator and provides runtime logic for it.

+/


import sea;
import stackup;
import std.getopt;



int main(string[] args){
   
    //Inits 
    string suFilename;
    string outputFilename;

    //Parse command line options
    getopt( args,
            "inputfile|if", &suFilename,
            "outputfile|of", &outputFilename);

    // Runtime logic

    SEA_Compute();
    auto stackupVar = new stackup( suFilename );
    
    //


    return 0;

}


