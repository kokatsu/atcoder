import std;

void main() {
    auto A = new int[][](3);
    foreach (i; 0 .. 3) A[i] = readln.chomp.split.to!(int[]);

    auto S = new bool[][](3, 3);

    int N;
    readf("%d\n", N);

    foreach (_; 0 .. N) {
        int b;
        readf("%d\n", b);

        foreach (i; 0 .. 3) {
            foreach (j; 0 .. 3) {
                if (A[i][j] == b) S[i][j] = true;
            }
        }
    }

    auto T = S.transposed;

    bool isOK, l = true, r = true;
    foreach (i; 0 .. 3) {
        isOK |= S[i].all;
        isOK |= T[i].all;

        l &= S[i][i], r &= S[i][2-i];
    }

    isOK |= (l || r);

    writeln(isOK ? "Yes" : "No");
}