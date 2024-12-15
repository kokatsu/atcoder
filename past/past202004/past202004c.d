import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = new dchar[][](N);
    foreach (i; 0 .. N)
        S[i] = readln.chomp.to!(dchar[]);

    foreach_reverse (i; 0 .. N - 1) {
        foreach (j; N - i - 1 .. N + i) {
            if (S[i + 1][j - 1 .. j + 2].canFind('X')) {
                S[i][j] = 'X';
            }
        }
    }

    writefln("%(%-(%s%)\n%)", S);
}
