import std;

void main() {
    int A, B, T;
    readf("%d %d %d\n", A, B, T);

    int D = B - A;

    int N = (T - B + D - 1) / D;

    int res = B + D * N;
    res.writeln;
}