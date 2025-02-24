import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    if (A < B) {
        swap(A, B);
    }

    long res;
    while (B > 0) {
        res += A / B;
        A %= B;
        swap(A, B);
    }

    --res;

    res.writeln;
}
