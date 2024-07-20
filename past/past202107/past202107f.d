import std;

void main() {
    int N;
    readf("%d\n", N);

    auto L = new int[](N), R = new int[](N);
    foreach (i; 0 .. N) {
        int D, S, T;
        readf("%d %d %d\n", D, S, T);

        D *= 24;
        L[i] = D + S, R[i] = D + T;
    }

    zip(L, R).sort!((a, b) => a[1] == b[1] ? a[0] < b[0] : a[1] < b[1]);

    bool isOk = false;
    foreach (i; 1 .. N) {
        isOk |= L[i] < R[i-1];
    }

    string res = isOk ? "Yes" : "No";
    res.writeln;
}