import std;

void main() {
    int K;
    readf("%d\n", K);

    int res;
    foreach (i; 1 .. K + 1) {
        foreach (j; 1 .. K + 1) {
            int g = gcd(i, j);

            foreach (k; 1 .. K + 1) {
                res += gcd(g, k);
            }
        }
    }

    res.writeln;
}
