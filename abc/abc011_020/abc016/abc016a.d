import std;

void main() {
    int M, D;
    readf("%d %d\n", M, D);

    writeln(M % D == 0 ? "YES" : "NO");
}