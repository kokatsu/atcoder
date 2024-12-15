import std;

const int D = 10;

void main() {
    int N;
    readf("%d\n", N);

    --N;

    auto res = new int[](D);
    foreach_reverse (i; 0 .. D) {
        res[i] = (N % 2 == 0 ? 4 : 7);
        N /= 2;
    }

    writefln("%(%s%)", res);
}
