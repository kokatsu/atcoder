import std;

struct S {
    long to, cost;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto H = readln.chomp.split.to!(long[]);

    auto slopes = new long[][](N);
    foreach (i; 0 .. M) {
        long U, V;
        readf("%d %d\n", U, V);

        --U, --V;
        slopes[U] ~= V, slopes[V] ~= U;
    }

    auto happiness = new long[](N);
    happiness[] = long.min;
    happiness[0] = 0;

    auto heap = new BinaryHeap!(Array!S, "a.cost < b.cost")();
    heap.insert(S(0, 0));

    long res;
    while (!heap.empty) {
        auto f = heap.front;
        heap.popFront;

        foreach (s; slopes[f.to]) {
            long diff = H[f.to] - H[s];

            long c = f.cost;
            if (diff > 0) c += diff;
            if (diff < 0) c += diff * 2;

            res = max(res, c);

            if (c > happiness[s]) {
                happiness[s] = c;
                heap.insert(S(s, c));
            }
        }
    }

    res.writeln;
}