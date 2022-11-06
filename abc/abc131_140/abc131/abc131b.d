import std;

void main() {
    int N, L;
    readf("%d %d\n", N, L);

    auto apples = iota(L, L+N).array;

    apples.sort!"a * a < b * b";

    int res = apples.sum - apples.front;
    res.writeln;
}