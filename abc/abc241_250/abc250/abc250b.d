import std;

void main() {
    int N, A, B;
    readf("%d %d %d\n", N, A, B);

    auto res = new dchar[][](N * A, N * B);
    foreach (i; 0 .. N * A) {
        foreach (j; 0 .. N * B) {
            bool isWhite = true;
            if ((i / A) % 2 == 0)
                isWhite = !isWhite;
            if ((j / B) % 2 == 0)
                isWhite = !isWhite;

            res[i][j] = (isWhite ? '.' : '#');
        }
    }

    foreach (r; res)
        r.writeln;
}
