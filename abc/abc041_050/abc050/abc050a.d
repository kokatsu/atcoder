import std;

void main() {
    int A, B;
    dchar op;
    readf("%d %c %d\n", A, op, B);

    int res = (op == '+' ? A + B : A - B);
    res.writeln;
}
