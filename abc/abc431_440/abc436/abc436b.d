import std;

void main() {
    int N;
    readfln("%d", N);

    int k = 1, r, c = N / 2;
    int[][] S = new int[][](N, N);
    S[r][c] = k;
    foreach (i; 0 .. N * N - 1) {
        int nr = (r - 1 + N) % N, nc = (c + 1) % N;
        if (S[nr][nc] > 0) {
            nr = (r + 1) % N, nc = c;
        }

        S[nr][nc] = ++k;
        r = nr, c = nc;
    }

    string res = format("%(%(%d %)\n%)", S);
    res.writeln;
}
