/+
FileName: stackup.d 

Description: 
    Declarations and logic for parsing a stackup that has been converted into an appropriate JSON format.

+/



import std.file;
import std.string;
import std.stdio;
import std.json;


class stackup{
    int member;
    JSONValue _json;

       
/+
    Class Methods
+/    
    // Parse in the JSON file and creates an object to work with.
    final void  parseStackup( string aParam ){

        _json = parseJSON( 

                readText( aParam ));
    } 
    

/+
Constructor
+/
    // Initialise the class from the provided JSON file
    this( in string _filename ){

        parseStackup( _filename );
        writeln(_json.toString()); 
    } 

/+
Destructor
+/
    ~this( ){
    }

}
