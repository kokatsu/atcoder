import std;

void main() {
    int N, A;
    readf("%d %d\n", N, A);

    int mn = (A + 2) / 3, mx = min(A, N/3);
    writeln(mn, " ", mx);
}