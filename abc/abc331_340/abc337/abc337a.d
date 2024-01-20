import std;

void main() {
    int N;
    readf("%d\n", N);

    int M;
    foreach (_; 0 .. N) {
        int X, Y;
        readf("%d %d\n", X, Y);

        M += X - Y;
    }

    string res = "Draw";
    if (M > 0) res = "Takahashi";
    if (M < 0) res = "Aoki";

    res.writeln;
}