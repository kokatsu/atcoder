import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    long f(long x) {
        long r = x % 4, f = (r >> 1) & 1;
        if (r & 1) return !f;
        else return x + f;
    }

    long res = f(A-1) ^ f(B);
    res.writeln;
}