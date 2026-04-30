import std;

void main() {
    int N, M, L;
    readfln("%d %d %d", N, M, L);

    int P, Q, R;
    readfln("%d %d %d", P, Q, R);

    int res;
    foreach (a; [P, Q, R].permutations) {
        res = max(res, (N / a[0]) * (M / a[1]) * (L / a[2]));
    }

    res.writeln;
}
