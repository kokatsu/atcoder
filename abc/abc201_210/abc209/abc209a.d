import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int res = max(0, B-A+1);
    res.writeln;
}