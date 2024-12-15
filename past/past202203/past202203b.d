import std;

void main() {
    int A, B, X, Y;
    readf("%d %d %d %d\n", A, B, X, Y);

    int res = min(X / A, Y / B);
    res.writeln;
}
