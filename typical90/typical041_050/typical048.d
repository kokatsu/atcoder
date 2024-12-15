import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto list = new long[](N * 2);
    foreach (i; 0 .. N) {
        long A, B;
        readf("%d %d\n", A, B);

        list[i * 2] = B, list[i * 2 + 1] = A - B;
    }

    list.sort!"a > b";

    list[0 .. K].sum.writeln;
}
