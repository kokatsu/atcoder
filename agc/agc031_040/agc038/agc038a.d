import std;

void main() {
    int H, W, A, B;
    readf("%d %d %d %d\n", H, W, A, B);

    auto res = new int[][](H, W);
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            res[i][j] = (((i < B) ^ (j < A)) ? 1 : 0);
        }
    }

    foreach (r; res)
        writefln("%(%s%)", r);
}
