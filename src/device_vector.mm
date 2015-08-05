//
//  Created by Aditya Atluri on 7/12/15.
//  Copyright © 2015 Aditya Atluri. All rights reserved.
//

#include <iostream>
#include <string>
#include "vulpes.hpp"
#include <vector>

int main(int argc, const char * argv[]) {

  // Created a 4 element Host vector
  std::vector<int>H(4);
  
  // Assigning values to the vector
  for(unsigned i=0; i < H.size(); i++){
    H[i] = 1;
  }
  
  // Creating a device vector and copying data to it from host vector
  vulpes::vector<int> D = H;
  
  // Creating a device vector and passing vector D's reference to it.
  // This creates a new vector E with same parameters as D.
  vulpes::vector<int> E = D;
  
  // Changing value of an element in device vector
  D[0] = 2;
  
  // Printing out the device vector
  for(unsigned i=0; i < E.size(); i++){
    std::cout<< E[i] <<std::endl;
  }
  
  // Prints out maximum size a vector can hold in bytes.
  std::cout<< E.max_size() <<std::endl;
  
  // Current size of vector in byes.
  std::cout<< E.capacity() <<std::endl;
  
  // Length of the vector
  std::cout<< E.size() <<std::endl;

  // Trying to access elements out of vector range.
  // Throws out of bound exception
  std::cout<< E[4] <<std::endl;
  std::cout<< E.at(4) <<std::endl;
  
  return 0;
}
