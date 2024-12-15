import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    writeln(A % 2 == 1 && B % 2 == 1 ? "Yes" : "No");
}
