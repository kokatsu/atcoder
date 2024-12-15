import std;

void main() {
    int X, A, B, C;
    readf("%d %d %d %d\n", X, A, B, C);

    int hare = (A * C + X) * B, tortoise = A * X;

    string res = "Tie";
    if (hare < tortoise)
        res = "Hare";
    if (hare > tortoise)
        res = "Tortoise";

    res.writeln;
}
