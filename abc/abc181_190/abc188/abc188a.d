import std;

void main() {
    int X, Y;
    readf("%d %d\n", X, Y);

    if (X > Y)
        swap(X, Y);

    bool isOK = (X + 3 > Y);
    writeln(isOK ? "Yes" : "No");
}
