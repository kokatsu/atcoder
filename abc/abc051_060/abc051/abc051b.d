import std;

void main() {
    int K, S;
    readf("%d %d\n", K, S);

    int res;
    foreach (i; 0 .. K+1) {
        foreach (j; 0 .. K+1) {
            long k = S - i - j;
            if (0 <= k && k <= K) ++res;
        }
    }

    res.writeln;
}