import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int res = round(A.to!real / B.to!real).to!int;
    res.writeln;
}
