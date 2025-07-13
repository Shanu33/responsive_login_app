class SliderIndex{
static var Counter=0;
static void getIndex(String op,endIndex) {
  if (op == "+") {
    if (Counter < endIndex) {
      Counter++;
    } else {
      Counter = 0;
    }
  } else if (op == "-") {
    if (Counter > 0) {
      Counter--;
    } else {
      Counter = endIndex;
    }
  }
}
}