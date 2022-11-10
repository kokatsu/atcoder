import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = new string[](N);
    auto P = new int[](N);
    foreach (i; 0 .. N) readf("%s %d\n", S[i], P[i]);

    auto res = iota(1, N+1).array;
    zip(S, P, res).sort!"a[0] == b[0] ? a[1] > b[1] : a[0] < b[0]";

    foreach (r; res) r.writeln;
}