import std;

void main() {
    int N, X, Y, Z;
    readf("%d %d %d %d\n", N, X, Y, Z);

    if (X > Y) {
        swap(X, Y);
    }

    string res = clamp(Z, X, Y) == Z ? "Yes" : "No";
    res.writeln;
}
