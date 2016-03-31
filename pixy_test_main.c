// pixy_test_main

int main()
{
  int i=0, curr, prev=0;

  // look for two start codes back to back
  while(1)
  {
    curr = getStart());
    if (prev && curr) // two start codes means start of new frame
      printf("%d", i++);
    prev = curr;
  }
}