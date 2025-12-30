import std;

void main() {
    int N;
    readf("%d\n", N);

    dchar[][] G = new dchar[][](N, N);
    foreach (i; 0 .. N) {
        G[i][] = '.';

        foreach (j; 0 .. N) {
            if (min(i, j, N - i - 1, N - j - 1) % 2 == 0) {
                G[i][j] = '#';
            }
        }
    }

    string res = format("%(%-(%c%)\n%)", G);
    res.writeln;
}
