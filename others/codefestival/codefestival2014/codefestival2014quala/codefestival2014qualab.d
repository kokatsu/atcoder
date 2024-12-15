import std;

void main() {
    string A;
    int B;
    readf("%s\n%d\n", A, B);

    auto L = A.length, P = (B - 1) % L;

    char res = A[P];
    res.writeln;
}
