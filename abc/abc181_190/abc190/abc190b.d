import std;

void main() {
    int N, S, D;
    readf("%d %d %d\n", N, S, D);

    bool isOK;
    foreach (_; 0 .. N) {
        int X, Y;
        readf("%d %d\n", X, Y);

        isOK |= (X < S && Y > D);
    }

    writeln(isOK ? "Yes" : "No");
}
