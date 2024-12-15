import std;

void main() {
    int N;
    readf("%d\n", N);

    string res = "Hello World";
    if (N == 2) {
        int A, B;
        readf("%d\n%d\n", A, B);

        res = to!string(A + B);
    }

    res.writeln;
}
