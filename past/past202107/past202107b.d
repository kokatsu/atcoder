import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    real res = A >= B * C ? C.to!real : A.to!real / B;
    writefln("%.10f", res);
}