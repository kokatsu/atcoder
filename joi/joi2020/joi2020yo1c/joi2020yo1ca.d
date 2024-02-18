import std;

void main() {
    int X, L, R;
    readf("%d %d %d\n", X, L, R);

    int res = X.clamp(L, R);
    res.writeln;
}