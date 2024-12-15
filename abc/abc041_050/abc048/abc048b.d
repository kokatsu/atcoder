import std;

void main() {
    long a, b, x;
    readf("%d %d %d\n", a, b, x);

    long f(long u) {
        if (u < 0)
            return u;
        return u / x;
    }

    long res = f(b) - f(a - 1);
    res.writeln;
}
