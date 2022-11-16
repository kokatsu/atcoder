import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int res = max(A*2-1, B*2-1, A+B);
    res.writeln;
}