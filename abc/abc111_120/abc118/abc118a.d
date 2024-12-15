import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int res = (B % A == 0 ? A + B : B - A);
    res.writeln;
}
