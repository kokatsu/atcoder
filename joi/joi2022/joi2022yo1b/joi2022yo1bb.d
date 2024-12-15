import std;

void main() {
    int A, B;
    readf("%d\n%d\n", A, B);

    int res = ((A - 1) + B) % 12 + 1;
    res.writeln;
}
