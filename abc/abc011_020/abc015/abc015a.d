import std;

void main() {
    string A, B;
    readf("%s\n%s\n", A, B);

    writeln(A.length > B.length ? A : B);
}