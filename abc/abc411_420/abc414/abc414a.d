import std;

void main() {
    int N, L, R;
    readf("%d %d %d\n", N, L, R);

    int res;
    foreach (_; 0 .. N) {
        int X, Y;
        readf("%d %d\n", X, Y);
        if (X <= L && R <= Y) {
            ++res;
        }
    }

    res.writeln;
}
