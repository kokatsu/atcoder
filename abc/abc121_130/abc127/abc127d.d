import std;

struct Card {
    long num, cnt;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);

    A.sort;
    auto G = A.group;

    auto heap = new BinaryHeap!(Array!Card, "a.num < b.num")();
    foreach (g; G) {
        heap.insert(Card(g[0], g[1].to!long));
    }

    foreach (_; 0 .. M) {
        long B, C;
        readf("%d %d\n", B, C);

        heap.insert(Card(C, B));
    }

    long res, rem = N;
    while (rem > 0) {
        auto f = heap.front;
        heap.popFront;

        long c = min(rem, f.cnt);
        res += f.num * c;
        rem -= c;
    }

    res.writeln;
}