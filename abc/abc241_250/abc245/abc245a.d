import std;

void main() {
    int A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    bool isOK;
    if (A < C)
        isOK = true;
    if (A == C && B <= D)
        isOK = true;

    writeln(isOK ? "Takahashi" : "Aoki");
}
