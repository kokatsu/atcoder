import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int res = A ^^ B + B ^^ A;
    res.writeln;
}
