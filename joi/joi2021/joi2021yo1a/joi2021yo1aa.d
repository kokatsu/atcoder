import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    int S = sum([A, B, C]), N = min(A, B, C), X = max(A, B, C);

    int res = S - N - X;
    res.writeln;
}