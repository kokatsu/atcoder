import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int S = A + B;

    string res = S < 10 ? S.to!string : "error";
    res.writeln;
}
