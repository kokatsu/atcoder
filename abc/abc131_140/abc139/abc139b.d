import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    int res, num = 1;
    while (num < B) {
        ++res, num += A - 1;
    }

    res.writeln;
}