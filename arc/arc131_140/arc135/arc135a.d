import std;

enum long M = 998_244_353;

void main() {
    long X;
    readfln("%d", X);

    long[long] D;

    long f(long x) {
        if (x in D) {
            return D[x];
        }

        if (x < 4) {
            return x;
        }

        D[x] = (f(x / 2) * f((x + 1) / 2)) % M;
        return D[x];
    }

    long res = f(X);
    res.writeln;
}
