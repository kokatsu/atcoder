import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int res = max(0, A - B * 2);
    res.writeln;
}
