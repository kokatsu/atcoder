import std;

void main() {
    long A, B, C;
    readfln("%d %d %d", A, B, C);

    long res = max(0, B - A) * C;
    res.writeln;
}
