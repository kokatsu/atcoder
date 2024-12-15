import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto S = new int[][](H, W);
    foreach (i; 0 .. H) {
        S[i] = readln.chomp.split.to!(int[]);
    }

    int N;
    readf("%d\n", N);

    foreach (_; 0 .. N) {
        int r, c;
        readf("%d %d\n", r, c);

        --c;

        foreach_reverse (i; 0 .. r) {
            S[i][c] = 0;
            if (i > 0) {
                S[i][c] = S[i - 1][c];
            }
        }
    }

    writefln("%(%(%d %)\n%)", S);
}
