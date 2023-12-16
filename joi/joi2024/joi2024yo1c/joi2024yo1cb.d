import std;

void main() {
    int A, B;
    readf("%d\n%d\n", A, B);

    int S = A + B;

    size_t res = S.to!string.length;
    res.writeln;
}