import std;

void main() {
    int N, K, A;
    readf("%d %d %d\n", N, K, A);

    int res = A;
    foreach (i; 1 .. K) {
        ++res;
        if (res > N) {
            res = 1;
        }
    }

    res.writeln;
}