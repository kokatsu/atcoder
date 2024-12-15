import std;

void main() {
    auto A = new bool[](31);

    foreach (i; 0 .. 28) {
        int N;
        readf("%d\n", N);

        A[N] = true;
    }

    auto res = iota(1, 31).filter!(i => !A[i]);
    writefln("%(%s\n%)", res);
}
