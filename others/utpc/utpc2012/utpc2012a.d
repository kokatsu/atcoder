import std;

void main() {
    auto A = new dchar[](4), B = new dchar[](4);
    readf("%c%c%c%c/%c%c/%c%c", A[0], A[1], A[2], A[3], B[0], B[1], B[2], B[3]);

    A.sort, B.sort;

    writeln(A == B ? "yes" : "no");
}