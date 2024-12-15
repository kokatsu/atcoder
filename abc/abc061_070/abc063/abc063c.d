import std;

enum int L = 10_001;

void main() {
    int N;
    readf("%d\n", N);

    auto memo = new bool[](L);
    memo[0] = true;
    foreach (_; 0 .. N) {
        int s;
        readf("%d\n", s);

        foreach_reverse (i; s .. L) {
            memo[i] |= memo[i - s];
        }
    }

    auto f = iota(L - 1, -1, -1).filter!(i => i % 10 != 0 && memo[i]);

    int res = f.empty ? 0 : f.front;
    res.writeln;
}
