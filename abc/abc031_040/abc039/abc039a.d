import std;

void main() {
    int A, B, C;
    readfln("%d %d %d", A, B, C);

    int res = (A * B + B * C + C * A) * 2;
    res.writeln;
}
