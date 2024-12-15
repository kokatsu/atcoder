import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    bool isOK = (A * A + B * B < C * C);
    writeln(isOK ? "Yes" : "No");
}
