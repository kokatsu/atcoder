import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int[] S = readln.chomp.split.to!(int[]);
    int[] T = readln.chomp.split.to!(int[]);

    int idx = N;
    foreach (i; 1 .. N) {
        if (S[i] != S[0]) {
            idx = min(idx, i, N-i);
        }
    }

    int res, f = S[0];
    foreach (i; 0 .. M) {
        if (T[i] == f) {
            res += 1;
        }
        else {
            if (idx == N) {
                res = -1;
                break;
            }
            res += idx + 1;
            f = T[i];
            idx = 1;
        }
    }

    res.writeln;
}