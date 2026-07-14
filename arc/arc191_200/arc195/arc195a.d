import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] A = readln.chomp.split.to!(int[]);
    int[] B = readln.chomp.split.to!(int[]);

    int p, q;
    int[] L = new int[](M);
    while (q < M) {
        while (p < N && A[p] != B[q]) {
            ++p;
        }

        if (p >= N) {
            break;
        }

        L[q++] = p++;
    }

    int r = N - 1, s = M - 1;
    int[] R = new int[](M);
    while (s >= 0) {
        while (r >= 0 && A[r] != B[s]) {
            --r;
        }

        if (r < 0) {
            break;
        }

        R[s--] = r--;
    }

    string res = q == M && s == -1 && zip(L, R).any!(a => a[0] != a[1]) ? "Yes" : "No";
    res.writeln;
}
