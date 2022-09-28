import std;

void main() {
    int H, A;
    readf("%d %d\n", H, A);

    int res = (H + A - 1) / A;
    res.writeln;
}