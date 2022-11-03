import std;

void main() {
    int N;
    readf("%d\n", N);

    int L = 10 ^^ 5 + 2;
    auto cnts = new int[][](L, 3);

    auto R = new int[](N), H = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", R[i], H[i]);

        --H[i];
        ++cnts[R[i]][H[i]];
    }

    auto wins = new int[](L);
    foreach (i; 1 .. L) {
        wins[i] = wins[i-1] + cnts[i-1].sum;
    }

    foreach (r, h; zip(R, H)) {
        int win = wins[r] + cnts[r][(h+1)%3], lose = N - wins[r+1] + cnts[r][(h+2)%3], draw = cnts[r][h] - 1;
        writeln(win, " ", lose, " ", draw);
    }
}