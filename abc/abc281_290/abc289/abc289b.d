import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto a = readln.chomp.split.to!(int[]);

    auto used = new bool[](N + 1);
    foreach (x; a)
        used[x] = true;

    int i, pos = 1;
    int[] res;
    while (i < N) {
        int next = pos;
        while (next <= N && used[next]) {
            ++next;
        }

        auto arr = iota(pos, next + 1).array;
        arr.reverse;

        res ~= arr;
        i = res.length.to!int;
        pos = next + 1;
    }

    writefln("%(%s %)", res);
}
