import std;

void main() {
    int X, Y;
    readf("%d %d\n", X, Y);

    bool isOK;
    foreach (u; 0 .. X + 1) {
        int v = X - u;

        isOK |= (u * 2 + v * 4 == Y);
    }

    writeln(isOK ? "Yes" : "No");
}
