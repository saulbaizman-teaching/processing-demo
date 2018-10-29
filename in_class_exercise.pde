// Enable the ability to export PDF files. Set to 'true' to enable or 'false' to disable.
boolean enable_pdf_export = false ;

// Import PDF Library. (So you can export PDFs of the sketch's output.)
import processing.pdf.*;

String pdf_filename ;

void setup ( ) {
  size ( 1152, 720 ) ; // In pixels. Translates to 16 inches by 10 inches.

  set_background ( ) ; // Set the background color.

  if ( enable_pdf_export ) {
    pdf_filename = "export-"+ year() + month() + day() + hour() + minute() + second() + millis()
      + ".pdf" ;
    beginRecord ( PDF, pdf_filename ) ;
    println ( "* * * * * PDF exporting is enabled. * * * * *" ) ;
  } else {
    println ( "NOTE: PDF exporting is *disabled*. To enable it, change the variable 'enable_pdf_export' to 'true' on line 2 of the PDE file." ) ;
  }

  my_code ( ) ;

  if ( enable_pdf_export ) {
    endRecord();
    println ( "The file \"" + pdf_filename + "\" has been exported to your Processing sketch's parent folder. Press 'R' to generate another composition." ) ;
  }

  // End of setup() function.
}

// WARNING: DO NOT PUT ANY CODE IN THE FUNCTION BELOW, AND DO NOT DELETE IT.
void draw ( ) {
}

// Has the R key been pressed? If so, re-run the sketch.
void keyPressed() {
  if ( key == 'r' ) {
    setup ( ) ;
  }
}

// Has the mouse been clicked? If so, re-run the sketch.
void mouseClicked() {
  setup ( ) ;
}

void set_background ( ) { 
  background ( 255, 255, 255 ) ; // 255, 255, 255 is white. This "hides" what's underneath.
}

// User-defined function where all of YOUR code goes.
void my_code ( ) {

  // +++ YOUR CODE GOES *BELOW* THIS LINE. +++ //


  float circle_diameter = random ( 100, 200 ) ;

  float horizontal_gap = width / 4 ; // This is the gap between each circle.

  float random_red ; // Declare the variable, but don't assign a value.
  float random_green ;
  float random_blue ;

  noStroke() ;

  float x_coordinate = 0 ;
  int counter = 0 ;
  while ( counter < 5 ) {
    
    // Note that the variables below don't include a data type.
    random_red = random ( 0, 255 ); // Select a decimal number between 0 and 255.
    random_green = random ( 0, 255 );
    random_blue = random ( 0, 255 ) ;

    fill (random_red, random_green, random_blue) ; // fill ( red, green, blue ) ;

    ellipse ( x_coordinate, circle_diameter/2, circle_diameter, circle_diameter) ;
    x_coordinate = x_coordinate + horizontal_gap ; // Increase the value of the x-coordinate by a gap.
    counter = counter + 1 ; // Increase the counter by 1.
  }





  // +++ YOUR CODE GOES *ABOVE* THIS LINE. +++ //

  // WARNING: DON'T PUT CODE AFTER THE CLOSING CURLY BRACE!
  // Your code must be contained inside the function's code block.
}
