import std;

void main() {
    int A, B, C, D, E, F;
    readf("%d\n%d\n%d\n%d\n%d\n%d\n", A, B, C, D, E, F);

    int res = A + B + C + D + E + F - min(A, B, C, D) - min(E, F);
    res.writeln;
}
