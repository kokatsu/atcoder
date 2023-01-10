import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    writeln(A <= C && C <= B ? "Yes" : "No");
}