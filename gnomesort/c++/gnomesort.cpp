#include <iostream>
#include <vector>

using namespace std;

int main()
{
  // collect input
  vector<int> input = {};
  int num;
  while (cin >> num)
  {
    input.push_back(num);
  }

  // sort
  int iter = 0;
  while (iter < input.size())
  {
    if (iter == 0 || input.at(iter) >= input.at(iter - 1))
    {
      iter++;
    }
    else
    {
      int temp = input.at(iter);
      input[iter] = input.at(iter - 1);
      input[iter - 1] = temp;
      iter--;
    }
  } 

  // Print sorted output
  cout << "\n---Thanks for the input!---\nHere it is in sorted order:\n";
  for (int out : input)
  {
     cout << "\n";
     cout << out;
  }

}
