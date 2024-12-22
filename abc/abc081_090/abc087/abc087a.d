import std;

void main() {
    int X, A, B;
    readf("%d\n%d\n%d\n", X, A, B);

    int res = (X - A) % B;
    res.writeln;
}
