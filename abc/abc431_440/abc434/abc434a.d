import std;

void main() {
    int W, B;
    readf("%d %d\n", W, B);

    int res = W * 10 ^^ 3 / B + 1;
    res.writeln;
}
