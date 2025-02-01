import std;

struct Block {
    int id, Y;
}

void main() {
    int N, W;
    readf("%d %d\n", N, W);

    auto blocks = new Block[][](W);
    foreach (i; 0 .. N) {
        int X, Y;
        readf("%d %d\n", X, Y);

        blocks[X - 1] ~= Block(i + 1, Y);
    }

    int L = N;
    foreach (i; 0 .. W) {
        blocks[i].sort!"a.Y < b.Y";
        L = min(L, blocks[i].length);
    }

    auto times = new int[](N + 1);
    times[] = int.max;
    foreach (i; 0 .. L) {
        int M = W.iota.map!(j => blocks[j][i].Y).maxElement;
        foreach (j; 0 .. W) {
            times[blocks[j][i].id] = M;
        }
    }

    int Q;
    readf("%d\n", Q);

    auto res = new string[](Q);
    foreach (i; 0 .. Q) {
        int T, A;
        readf("%d %d\n", T, A);

        res[i] = times[A] > T ? "Yes" : "No";
    }

    writefln("%-(%s\n%)", res);
}
