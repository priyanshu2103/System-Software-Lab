/* Program to compute the Curved Surface Area, Surface area and Volume of a Right Circular cone
   having a fixed height, radius and length.
   Input:  Height, Radius and Length
   Output: Curved Surface Area, Surface Area and Volume
-------------------------------------------------------------------*/
#include <iostream>
using namespace std;
const
double PI = 3.14159265359;
void GetInputs(double & H, double & R, double & L);
void DisplayOutput(double H, double R, double L, double ca, double sa, double vol);

int main()
{
  cout << "Program computes curved surface area, surface area and volume of a cone.\n";
  double  radius,                         // radius of cone
	  height,			  // height of cone
          length,			  // length of cone
	  curvedSurfaceArea,		  // its curved surface area
          surfaceArea,                    // its surface area
          volume;                         // its volume
  GetInputs(height, radius, length);
  curvedSurfaceArea = PI * radius * length;
  surfaceArea = curvedSurfaceArea + PI * radius * radius;
  volume = PI * radius * radius * height / 3.0;
  DisplayOutput(height, radius, length, curvedSurfaceArea, surfaceArea, volume);
  return 0;
}

void GetInputs(double & H, double & R, double & L)
{
  cout << "Enter Height of cone: ";
  cin >> H;
  cout << "Enter Radius of cone: ";
  cin >> R;
  cout << "Enter Length of cone: ";
  cin >> L;
}

void DisplayOutput(double H, double R, double L, double ca, double sa, double vol)
{
  cout << "Height of cone is " << H << " inches\n";
  cout << "Radius of cone is " << R << " inches\n";
  cout << "Length of cone is " << L << " inches\n";
  cout << "Its curved surface area is " << ca << "sq. inches\n"
       << "Its surface area is " << sa << "sq. inches\n"
       << "Its volume is " << vol << " cubic inches.\n\n";
}