import std;

void main() {
    char C1, C2;
    int A, B;
    readf("%c %d\n%c %d\n", C1, A, C2, B);

    int res = (C1 == C2 ? abs(A - B) : A + B) / 15;
    res.writeln;
}
