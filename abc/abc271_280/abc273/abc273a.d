import std;

void main() {
    int N;
    readf("%d\n", N);

    int f(int x) {
        if (x == 0) {
            return 1;
        }
        return x * f(x - 1);
    }

    int res = f(N);
    res.writeln;
}
