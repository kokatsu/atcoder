import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(int[]);

    bool[int] L, R;
    L[0] = R[0] = true;
    foreach (i; 0 .. N / 2) {
        bool[int] T = L.dup;
        foreach (l; L.byKey) {
            if (l + A[i] <= K) {
                T[l + A[i]] = true;
            }
        }
        L = T;
    }

    foreach (i; N / 2 .. N) {
        bool[int] T = R.dup;
        foreach (r; R.byKey) {
            if (r + A[i] <= K) {
                T[r + A[i]] = true;
            }
        }
        R = T;
    }

    bool isOK;
    foreach (r; R.byKey) {
        if (K - r in L) {
            isOK = true;
        }
    }

    writeln(isOK ? "Yes" : "No");
}
