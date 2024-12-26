import std;

void main() {
    int A, B, C, X, Y;
    readf("%d %d %d %d %d\n", A, B, C, X, Y);

    int U = min(X, Y), V = max(X, Y);

    int res = min(A + B, C * 2) * U + min((X - U) * A + (Y - U) * B, C * 2 * (V - U));
    res.writeln;
}
