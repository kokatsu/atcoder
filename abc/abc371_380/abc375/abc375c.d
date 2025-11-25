import std;

void main() {
    int N;
    readf("%d\n", N);

    dchar[][] A = new dchar[][](N), B = new dchar[][](N, N);
    foreach (i; 0 .. N) {
        A[i] = readln.chomp.to!(dchar[]);
    }

    foreach (i, a; A) {
        foreach (j, c; a) {
            size_t k = min(i + 1, N - i, j + 1, N - j);
            size_t x = i, y = j, m = k % 4;
            foreach (_; 0 .. m) {
                size_t u = y, v = N - x - 1;
                x = u, y = v;
            }

            B[x][y] = c;
        }
    }

    string res = format("%(%-(%c%)\n%)", B);
    res.writeln;
}
