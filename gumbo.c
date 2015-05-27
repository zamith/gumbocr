#include "stdio.h"
#include "gumbo.h"

int main() {
  GumboTag tag = gumbo_tag_enum("html");
  printf("%d", (int)tag);
}
