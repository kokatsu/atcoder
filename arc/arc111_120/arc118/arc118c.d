import std;

void main() {
    int N;
    readf("%d\n", N);

    int L = 10 ^^ 4;
    int[] list = [6, 10, 15];

    if (N == 3) {
        writefln("%(%s %)", list);
        return;
    }

    auto sieve = new bool[](L+1);
    foreach (l; list) {
        foreach (i; iota(l, L+1, l)) {
            sieve[i] = true;
        }
    }

    auto res = iota(L+1).filter!(i => sieve[i]).array[0..N];
    writefln("%(%s %)", res);
}