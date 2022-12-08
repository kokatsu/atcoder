import std;

void main() {
    int A, B, X;
    readf("%d %d %d\n", A, B, X);

    writeln(A <= X && X <= A + B ? "YES" : "NO");
}