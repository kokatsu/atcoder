import std;

void main() {
    int N;
    readfln("%d", N);

    string res = N == 1 ? "Yes" : "No";
    bool[int] D;
    while (N > 1 && !D.get(N, false)) {
        D[N] = true;

        int M;
        while (N > 0) {
            int R = N % 10;
            M += R * R;
            N /= 10;
        }

        if (M == 1) {
            res = "Yes";
            break;
        }

        N = M;
    }

    res.writeln;
}
