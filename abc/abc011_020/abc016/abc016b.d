import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    int X = A + B, Y = A - B;

    if (X == C && Y == C)
        writeln("?");
    else if (X == C)
        writeln("+");
    else if (Y == C)
        writeln("-");
    else
        writeln("!");
}
